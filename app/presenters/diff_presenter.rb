class DiffPresenter
  include ERB::Util

  def initialize(changes_hash)
    @changes_hash = changes_hash
  end

  def as_json(options = {})
    @changes_hash.each_with_object({}) do |(property_name, values), changes|
      (old_value, new_value) = if values.is_a?(Array)
                                 values
                               else
                                 [nil, values]
                               end
      match_data = /(?<association>.+)_ids?$/.match(property_name)
      association = match_data[:association] if match_data
      association_class = association.camelize.constantize rescue nil if association
      if association_class && association_class.new.respond_to?(:display_name)
        changes[association] = diff(val_to_diff(association_class, old_value), val_to_diff(association_class, new_value))
      elsif new_value.is_a?(Array)
        changes[property_name] = diff(old_value.join(', '), new_value.join(', '))
      else
        changes[property_name] = diff(old_value, new_value)
      end
    end
  end

  private
  def val_to_diff(association_class, value)
    if value.is_a?(Array)
      if val = association_class.where(id: value)
        val.map { |obj| obj.send(attribute) }.sort.join(', ')
      else
        []
      end
    else
      if val = association_class.find_by(:id => value)
        val.display_name
      else
        ''
      end
    end
  end

  def diff(old_value, new_value)
    {
      diff: Diffy::Diff.new(html_escape(old_value), html_escape(new_value)).to_s(:html),
      final: new_value
    }
  end
end
