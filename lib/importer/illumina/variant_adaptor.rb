module Importer; module Illumina
  class VariantAdaptor
    def self.get_or_create_variant(row)
      (find_variant(row) || create_variant(row)).tap do |var|
        add_variant_metadata(var, row)
      end
    end

    def self.find_variant(row)
      #try each in priority order
      [
        ->() { find_variant_by_coordinates(row) },
        ->() { find_variant_by_amino_acid_change(row) },
        ->() { find_variant_by_bio_evidence_marker_id(row) },
      ].each do |finder|
        possible_matches = finder.call
        if possible_matches.uniq.size == 1
          return possible_matches.first
        end
      end
      return nil
    end

    def self.create_variant(row)
      (deletion_size, reference_bases) = extract_ref(row)
      (insertion_size, variant_bases) = extract_var(row)
      gene_names = process_gene_symbol(row)

      var = Variant.joins(:gene).where(
        chromosome: row['chromosomeId'],
        start: row['startPosition'],
        stop: row['endPosition'],
        reference_bases: deletion_size ? nil : reference_bases,
        variant_bases: insertion_size ? nil : variant_bases,
      ).first_or_initialize

      genes = Gene.where(name: gene_names).all

      if genes.size != 1
        #what do we want to do in this case?
        raise StandarError.new("oh noes, matched multiple genes")
        #var.gene = genes.first
      else
        var.gene_id = genes.first.id
      end

      var.description ||= ''
      var.reference_build ||= :GRCh37
      #if creating new variant, check if any amino acid change names are mentioned in the clineff colum
      if var.name.blank?
        potential_names = extract_names(row, 'aminoAcidChangeName', ';') + extract_names(row, 'beMarkerId', ',')
        if (matching_names = potential_names.select { |x| x.in? row['clinicalEffect'] }).size > 0
          var.name = matching_names.first.upcase
        elsif potential_names.any?
          var.name = potential_names.first.upcase
        else
          raise StandardError.new('oh noes - no name?')
        end
      end
      var.save
      var
    end

    def self.add_variant_metadata(var, row)
      #aliases
      possible_aliases = extract_names(row, 'beMarkerId', ',') + extract_names(row, 'aminoAcidChangeName', ';')
      possible_aliases << process_rsid(row)
      existing_aliases = var.variant_aliases.map(&:name).map(&:upcase)

      suggested_changes = {
        'variant_aliases' => [],
        'variant_types' => []
      }

      suggested_changes['variant_aliases'] = (possible_aliases.compact.reject { |x| x.upcase == var.name } + existing_aliases).uniq

      #type
      (name, soid) = Importer::Illumina::Mappings.illumina_type_to_sequence_ontology(row['variantType'])
      if soid
        variant_type = if type = VariantType.find_by(name: name)
                         type
                       else
                         VariantType.where(name: name, soid: '', display_name: name, description: '').first_or_create
                       end
        existing_types = var.variant_types.map(&:id)
        existing_types << variant_type.id
        suggested_changes['variant_types'] = existing_types.uniq
      end
      full_change = suggested_changes.reject { |_, val| val.blank? }
      begin
        if full_change.any?
          full_change.keys.each do |key|
            var.suggest_change!(
              User.find_by(email: 'lcbarrow11@gmail.com'),
              {},
              {
                key => full_change[key]
              }
            )
          end
        end
      rescue NoSuggestedChangesError
      end
    end

    def self.find_variant_by_rsid(row)
      if rsid = process_rsid(row)
        possible_variants = []
        Variant.includes(:gene).where(name: rsid).each { |v| possible_variants << v }
        VariantAlias.includes(variants: [:gene]).where('variant_aliases.name' => rsid).each { |v| possible_variants << v.variants }
        gene_symbols = process_gene_symbol(row)
        possible_variants.flatten.select { |v| v.gene.name.in?(gene_symbols) }
      else
        []
      end
    end

    def self.find_variant_by_bio_evidence_marker_id(row)
      check_possible_names(row, 'beMarkerId', ',')
    end

    def self.find_variant_by_amino_acid_change(row)
      check_possible_names(row, 'aminoAcidChangeName', ';')
    end

    def self.check_possible_names(row, column, delim)
      possible_variant_names = extract_names(row, column, delim)
      gene_symbols = process_gene_symbol(row)
      possible_variants = []
      possible_variant_names.each do |name|
        Variant.includes(:gene).where(name: name)
          .each { |v| possible_variants << v }
        VariantAlias.includes(variants: [:gene])
          .where('variant_aliases.name' => name)
          .flat_map(&:variants)
          .each { |v| possible_variants << v }
      end

      possible_variants.uniq.select do |v|
        v.gene.name.in?(gene_symbols)
      end
    end

    def self.find_variant_by_coordinates(row)
      variant_type = row['variantclassification']
      case variant_type.upcase
      when 'INDEL'
        process_deletion(row)
      when 'SINGLE POINT'
        process_single_point(row)
      when 'INSERTION'
        process_insertion(row)
      when 'DELETION'
        process_deletion(row)
      end
    end

    #deletions have a var of '-' and a ref formatted as either bases (ACGT) or a size (12bp)
    def self.process_deletion(row)
      (deletion_size, reference_bases) = extract_ref(row)
      variant_bases = [nil, '']

      #when its a size (12bp) match the positional info and length of reference bases
      #when its bases, query directly
      if deletion_size
        Variant.where(
          chromosome: row['chromosomeId'],
          start: row['startPosition'],
          stop: row['endPosition'],
          variant_bases: variant_bases
        ).select { |v| v.reference_bases.present? && v.reference_bases.size == deletion_size }
      else
        Variant.where(
          chromosome: row['chromosomeId'],
          start: row['startPosition'],
          stop: row['endPosition'],
          reference_bases: reference_bases,
          variant_bases: variant_bases
        )
      end
    end

    #insertions have a ref of '-' and a var formatted as either bases (CAGT) or a size (12bp)
    def self.process_insertion(row)
      (insertion_size, variant_bases) = extract_var(row)
      reference_bases = [nil, '']

      #when its a size (12bp) match the positional info and length of variant bases
      #when its bases, query directly
      if insertion_size
        #Variant.where(
          #chromosome: row['chromosomeId'],
          #start: row['startPosition'],
          #stop: row['endPosition'],
          #reference_bases: reference_bases
        #).select { |v| v.variant_bases.present? && v.variant_bases.size == insetion_size }

        #insertions only match bases now
        []
      else
        Variant.where(
          chromosome: row['chromosomeId'],
          start: row['startPosition'],
          stop: row['endPosition'],
          reference_bases: reference_bases,
          variant_bases: variant_bases
        )
      end
    end

    #snps are direct match only
    def self.process_single_point(row)
      Variant.where(
        chromosome: row['chromosomeId'],
        start: row['startPosition'],
        stop: row['endPosition'],
        variant_bases: row['variantAllele'],
        reference_bases: row['referenceAllele']
      )
    end

    #for indels, we assume either ref or var could have either format
    def self.process_indel(row)
      (deletion_size, reference_bases) = extract_ref(row)
      (insertion_size, variant_bases) = extract_var(row)

      #skip if we just have lengths for ref and var
      if deletion_size && insertion_size
        nil
      #treat it like a deletion
      elsif deletion_size
        Variant.where(
          chromosome: row['chromosomeId'],
          start: row['startPosition'],
          stop: row['endPosition'],
          variant_bases: variant_bases
        ).select { |v| v.reference_bases.present? && v.reference_bases.size == deletion_size }
      #treat it like an insertion
      elsif insertion_size
        Variant.where(
          chromosome: row['chromosomeId'],
          start: row['startPosition'],
          stop: row['endPosition'],
          reference_bases: reference_bases
        ).select { |v| v.variant_bases.present? && v.variant_bases.size == insetion_size }
      #try for exact match
      else
        Variant.where(
          chromosome: row['chromosomeId'],
          start: row['startPosition'],
          stop: row['endPosition'],
          reference_bases: reference_bases,
          variant_bases: variant_bases
        )
      end
    end

    def self.extract_ref(row)
      deletion_size = nil
      reference_bases = if (x = row['referenceAllele']).present?
                          #deletions: ref format '12bp'
                          if match = /(?<ref_length>\d+)bp/.match(x)
                            deletion_size = match[:ref_length].to_i
                            nil
                          elsif x == '-'
                            nil
                          else
                            x.strip
                          end
                        else
                          nil
                        end
      [deletion_size, reference_bases]
    end

    def self.extract_var(row)
      insertion_size = nil
      variant_bases = if (x = row['variantAllele']).present?
                          #insertions: var format '12bp'
                          if match = /(?<var_length>\d+)bp/.match(x)
                            insertion_size = match[:var_length].to_i
                            nil
                          elsif x == '-'
                            nil
                          else
                            x.strip
                          end
                        else
                          nil
                        end
      [insertion_size, variant_bases]
    end

    def self.process_gene_symbol(row)
      row['geneSymbol'].split(',').map(&:strip).map(&:upcase)
    end

    def self.process_rsid(row)
      #some values are chr:start, not rsid
      if (rsid = row['variantName']).present?
        if rsid =~ /^rs/
          rsid.strip.upcase
        else
          nil
        end
      else
        nil
      end
    end

    def self.extract_names(row, column, delim)
      if row[column].present?
        row[column].split(delim).compact
        .map(&:strip)
        .map(&:upcase)
        .reject { |x| x == 'NULL' }
        .reject { |x| x == 'N/A' }
        .map { |x| x.gsub(/\.$/, 'X') }
      else
        []
      end
    end
  end
end; end
