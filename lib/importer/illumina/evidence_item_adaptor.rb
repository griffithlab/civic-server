module Importer; module Illumina
  class EvidenceItemAdaptor
    @duplicate_items_fh = File.open('duplicates.csv', 'w')
    @blanks_fh = File.open('blanks.csv', 'w')

    def self.get_or_create_evidence_items(variant, row)

      evidence_statement_extractor = Importer::Illumina::ClinicalEffectParser.new(
        row['clinicalEffect'],
        row['drPubMed'],
      )

      evidence_statement = evidence_statement_extractor.evidence_statement
      evidence_level = evidence_statement_extractor.evidence_level

      if similar_evidence_item_exists?(variant, row)
        @duplicate_items_fh.puts row.to_csv
        #generate report of these rather than source suggestion....
        ["Duplicate", nil]
      elsif evidence_statement.blank? || evidence_level.blank?
        @blanks_fh.puts row.to_csv
        add_to_publication_queue(variant, row)
        ["Publication Queue", nil]
      elsif is_review_paper?(row['drPubMed'])
        add_to_publication_queue(variant, row)
        ["Publication Queue", nil]
      else
        ["Evidence Item", create_evidence_item(variant, evidence_statement, evidence_level, row)]
      end
    end

    def self.similar_evidence_item_exists?(variant, row)
      EvidenceItem.joins(:drugs, :source, :variant)
        .where(
          #'genes.name' => variant.gene.name,
          :variant => variant,
          'sources.pubmed_id' => row['drPubMed'],
          'drugs.name' => Drug.capitalize_name(row['drugName']),
        ).exists?
    end

    def self.add_to_publication_queue(variant, row)
      existing_source = Source.find_by(pubmed_id: row['drPubMed'])

      unless existing_source && SourceSuggestion.where(
        gene_name: variant.gene.name,
        source_id: existing_source.id,
        initial_comment: row['molecularEffect']
      ).exists?
        Actions::SuggestPublication.new(
          {
            pubmed_id: row['drPubMed'],
            gene_name: variant.gene.name,
          },
          {
            text: row['molecularEffect']
          },
          User.find_by(email: 'lcbarrow11@gmail.com')
        ).perform
      end
    end

    def self.create_evidence_item(variant, evidence_statement, evidence_level, row)
      unless ignore_eid?(variant, evidence_statement, row)
        (evidence_direction, clinical_significance) = process_molecular_effect(row)
        ei = EvidenceItem.create(
          description: evidence_statement,
          variant: variant,
          disease: process_disease(row),
          source: process_source(row),
          rating: nil,
          status: 'submitted',
          evidence_type: process_evidence_type(row),
          variant_origin: EvidenceItem.variant_origins['Somatic Mutation'],
          drug_interaction_type: nil,
          drugs: process_drug(row),
          evidence_level: EvidenceItem.evidence_levels[evidence_level],
          evidence_direction: evidence_direction,
          clinical_significance: clinical_significance
        )
        Event.create(
          action: 'submitted',
          originating_user: User.find_by(email: 'lcbarrow11@gmail.com'),
          subject: ei
        )
        ei
      end
    end

    def self.process_molecular_effect(row)
      (evidence_direction, clinical_significance) = Importer::Illumina::Mappings.molecular_effect(row['molecularEffect'])
      [EvidenceItem.evidence_directions[evidence_direction], EvidenceItem.clinical_significances[clinical_significance]]
    end

    def self.process_drug(row)
      [
        Drug.where(name: Drug.capitalize_name(row['drugName'])).first_or_create
      ]
    end

    def self.process_evidence_type(row)
      (_, civic_name) = Importer::Illumina::Mappings.association_class_id(row['deAssociationClassId'])
      if civic_name
        EvidenceItem.evidence_types[civic_name]
      else
        nil
      end
    end

    def self.process_source(row)
      Source.where(pubmed_id: row['drPubMed']).first_or_create
    end

    def self.process_disease(row)
      (disease_name, doid) = Importer::Illumina::Mappings.illumina_disease_names_to_doid(row['drDiseaseName'])
      if disease_name.present?
        if d = Disease.find_by(name: disease_name)
          d
        else
          Disease.create(name: disease_name, doid: doid, display_name: Disease.capitalize_name(disease_name))
        end
      else
        Disease.create(name: row['drDiseaseName'], doid: '', display_name: Disease.capitalize_name(row['drDiseaseName']))
      end
    end

    def self.is_review_paper?(pubmed_id)
      @known ||= {}
      if !@known.include?(pubmed_id)
        resp = Scrapers::PubMed.call_pubmed_api(pubmed_id)
        if resp.is_review?.present?
          @known[pubmed_id] = resp.is_review?
        end
      end
      @known[pubmed_id]
    end

    def self.ignore_eid?(variant, evidence_statement, row)
      Importer::Illumina::RowsToIgnore::ROWS.any? do |eid|
        [
          eid[:description] == evidence_statement,
          eid[:variant] == variant.name,
          eid[:disease] == process_disease(row).name,
          eid[:pubmed_id] == row['drPubMed'],
          eid[:drug] == process_drug(row).first.name
        ].all?
      end
    end
  end
end; end
