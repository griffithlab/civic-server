module Actions
  class FindFieldsWithPendingChanges
    attr_reader :moderated, :fields

    def initialize(moderated)
      @moderated = moderated
    end

    def perform
      @fields = moderated.open_changes
        .map(&:suggested_changes)
        .map(&:keys)
        .flatten
        .map { |field| field.gsub(/_ids?$/, '') }
        .each_with_object(Hash.new(0)) { |key, h| h[key] += 1 }
      self
    end
  end
end
