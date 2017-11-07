class HgvsExpression < ActiveRecord::Base
  has_and_belongs_to_many :variants

  def display_name
    expression
  end

  def self.my_gene_info_hgvs(variant)
    hgvs(variant, 'my_gene_info')
  end

  def self.allele_registry_hgvs(variant)
    hgvs(variant, 'allele_registry')
  end

  def self.hgvs(variant, type)
    valid_for_query =[
      variant.chromosome.nil?,
      variant.chromosome2.present?,
      variant.start2.present?,
      variant.start.nil?,
    ].none?

    if valid_for_query
      if type == 'my_gene_info'
        chromosome = "chr#{variant.chromosome}"
      elsif type == 'allele_registry'
        chromosome = refseq_sequence(variant.chromosome)
      end
      base_hgvs = "#{chromosome}:g.#{variant.start}"
      case variant_type(variant)
      when :deletion
        if variant.reference_bases.size > 1
          "#{base_hgvs}_#{variant.stop}del"
        else
          "#{base_hgvs}del"
        end
      when :substitution
        "#{base_hgvs}#{variant.reference_bases}>#{variant.variant_bases}"
      when :insertion
        "#{base_hgvs}_#{variant.stop.to_i}ins#{variant.variant_bases}"
      when :indel
        if variant.reference_bases.size > 1
          "#{base_hgvs}_#{variant.stop}delins#{variant.variant_bases}"
        else
          "#{base_hgvs}delins#{variant.variant_bases}"
        end
      else
        nil
      end
    else
      nil
    end
  end

  def self.variant_type(variant)
    if variant.reference_bases.blank? && variant.variant_bases.blank?
      nil
    elsif variant.reference_bases.present? && variant.variant_bases.blank?
      :deletion
    elsif variant.reference_bases.blank? && variant.variant_bases.present?
      :insertion
    elsif variant.reference_bases.size == 1 && variant.variant_bases.size == 1
      :substitution
    elsif variant.reference_bases.size > 1 && variant.variant_bases.size > 1
      :indel
    else
      nil
    end
  end

  def self.refseq_sequence(chromosome)
    sequences = {
      '1' =>  'NC_000001.10',
      '2' =>  'NC_000002.11',
      '3' =>  'NC_000003.11',
      '4' =>  'NC_000004.11',
      '5' =>  'NC_000005.9',
      '6' =>  'NC_000006.11',
      '7' =>  'NC_000007.13',
      '8' =>  'NC_000008.10',
      '9' =>  'NC_000009.11',
      '10' => 'NC_000010.10',
      '11' => 'NC_000011.9',
      '12' => 'NC_000012.11',
      '13' => 'NC_000013.10',
      '14' => 'NC_000014.8',
      '15' => 'NC_000015.9',
      '16' => 'NC_000016.9',
      '17' => 'NC_000017.10',
      '18' => 'NC_000018.9',
      '19' => 'NC_000019.9',
      '20' => 'NC_000020.10',
      '21' => 'NC_000021.8',
      '22' => 'NC_000022.10',
      'X' =>  'NC_000023.10',
      'Y' =>  'NC_000024.9',
    }
    sequences[chromosome]
  end
end
