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
      viewable_attribute = association_class.association_viewable?(association) if association_class
      if viewable_attribute
        changes[association] = diff(val_to_diff(association_class, viewable_attribute, old_value), val_to_diff(association_class, viewable_attribute, new_value))
      elsif new_value.is_a?(Array)
        changes[property_name] = diff(old_value.join(', '), new_value.join(', '))
      else
        changes[property_name] = diff(old_value, new_value)
      end
    end
  end

  private
  def val_to_diff(association_class, attribute, value)
    if value.is_a?(Array)
      if val = association_class.where(id: value)
        val.map { |obj| obj.send(attribute) }.sort.join(', ')
      else
        []
      end
    else
      if val = association_class.find_by(:id => value)
        val.send(attribute)
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
