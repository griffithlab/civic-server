module ActiveAdmin::ViewsHelper
  def capitalize_each(string)
    string.map { |s| s.split.map(&:capitalize).join(' ') }
  end
end
