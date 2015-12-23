module UserMarkupRenderer
  def self.render_field_from_object(object, field)
    Rails.cache.fetch(hash_key_from_object(object, field)) do
      render_markdown(object.send(field))
    end
  end

  def self.render_markdown(value)
      CustomFormatters::SlodownWithMentions.new(value)
        .link_mentions
        .markdown
        .autolink
        .sanitize
        .to_s
  end

  private
  def self.hash_key_from_object(object, field)
    "user_markup_#{object.class}_#{object.id}_#{object.updated_at}_#{field}"
  end
end
