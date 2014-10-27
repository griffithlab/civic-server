class DiffPresenter
  def initialize(changes_hash)
    @changes_hash = changes_hash
  end

  def as_json(options = {})
    @changes_hash.each_with_object({}) do |(property_name, (old_value, new_value)), changes|
      changes[property_name] = Diffy::Diff.new(old_value, new_value).to_s(:html)
    end
  end
end
