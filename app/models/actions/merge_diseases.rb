module Actions
  class MergeDiseases
    include Actions::Transactional
    attr_reader :disease_to_keep, :disease_to_remove

    def initialize(disease_to_keep, disease_to_remove)
      @disease_to_keep = disease_to_keep
      @disease_to_remove = disease_to_remove
    end

    private
    def execute
      move_evidence_items
      move_assertions
      update_source_suggestions
      combine_aliases
      disease_to_remove.destroy
    end

    def move_evidence_items
      EvidenceItem.unscoped.where(disease_id: disease_to_remove.id).each do |ei|
        ei.disease = disease_to_keep
        ei.save!
      end
    end

    def move_assertions
      disease_to_remove.assertions.each do |a|
        a.disease = disease_to_keep
        a.save!
      end
    end

    def update_source_suggestions
      SourceSuggestion.where(disease_name: disease_to_remove.name).each do |s|
        s.disease_name = disease_to_keep.name
        s.save!
      end
    end

    def combine_aliases
      all_aliases = (disease_to_keep.disease_aliases + disease_to_remove.disease_aliases).uniq
      disease_to_keep.disease_aliases = all_aliases
      disease_to_keep.save!
      disease_to_remove.disease_aliases = []
      disease_to_remove.save!
    end
  end
end
