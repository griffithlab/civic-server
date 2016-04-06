class EntitySuggestionPresenter
  include ActionView::Helpers::TextHelper

  attr_reader :entity, :preview_formatter

  def initialize(entity, preview_formatter)
    @entity = entity
    @preview_formatter = preview_formatter
  end

  def as_json(options = {})
    {
      id: entity.id,
      type: entity.class.to_s.underscore,
      preview: truncate(preview_formatter.call(entity), length: 50, separator: ' ')
    }
  end
end
