module Actions
  class FindPendingEvidence
    attr_reader :variant, :fields

    def initialize(variant)
      @variant = variant
    end

    # def perform_old
    #   @fields = moderated.open_changes
    #     .map(&:suggested_changes)
    #     .map(&:keys)
    #     .flatten
    #     .map { |field| field.gsub(/_ids?$/, '') }
    #     .each_with_object(Hash.new(0)) { |key, h| h[key] += 1 }
    #   self
    # end

    def perform
      @fields = variant.evidence_items
        .map(&:open_changes)
        .flatten
      self
    end
  end
end