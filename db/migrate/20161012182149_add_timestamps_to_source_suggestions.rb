class AddTimestampsToSourceSuggestions < ActiveRecord::Migration
  def change
    add_timestamps :source_suggestions
  end
end
