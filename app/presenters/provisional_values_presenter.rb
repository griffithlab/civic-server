class ProvisionalValuesPresenter
  attr_reader :entity

  def initialize(entity)
    @entity = entity
  end

  def as_json(opt = {})
    entity.open_changes.each_with_object({}) do |changeset, h|
      changeset.suggested_changes.each do |field, (_, new)|
        h[field] = {
        value: new,
        revision_id: changeset.id
      } if field == 'description'
      end
    end
  end
end