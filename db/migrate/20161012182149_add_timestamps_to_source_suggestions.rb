class AddTimestampsToSourceSuggestions < ActiveRecord::Migration[4.2]
  def change
    add_timestamps :source_suggestions
  end
end
