class EvidenceItemsByStatusPresenter
  attr_reader :variant

  def initialize(variant)
    @variant = variant
  end

  def as_json(opt = {})
    count_getter = if(counts = variant.evidence_items_by_status)
                     ->(field) { counts.send(field) }
                   else
                     ->(field) { 0 }
                   end

    fields.each_with_object(Hash.new) do |field, h|
      h[field] = count_getter.call(field)
    end
  end

  private
  def fields
    [
      :accepted_count,
      :rejected_count,
      :submitted_count
    ]
  end
end
