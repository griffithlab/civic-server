class DiffPresenter
  include ERB::Util

  def initialize(changes_hash)
    @changes_hash = changes_hash
  end

  def as_json(options = {})
    @changes_hash.each_with_object({}) do |(property_name, (old_value, new_value)), changes|
      changes[property_name] = Diffy::Diff.new(html_escape(old_value), html_escape(new_value)).to_s(:html)
    end
  end
end
