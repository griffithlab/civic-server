module UserMarkupRenderer
  def self.render_field_from_object(object, field)
    Rails.cache.fetch(hash_key_from_object(object, field)) do
      Slodown::Formatter.new(object.send(field))
        .markdown
        .autolink
        .sanitize
        .to_s
    end
  end

  private
  def self.hash_key_from_object(object, field)
    "user_markup_#{object.class}_#{object.id}_#{object.updated_at}_#{field}"
  end
end
