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
      combine_aliases
      disease_to_remove.destroy
    end

    def move_evidence_items
      disease_to_remove.evidence_items.each do |ei|
        ei.disease = disease_to_keep
        ei.save!
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
