class AddStatusToSourceSuggestions < ActiveRecord::Migration
  def change
    add_column :source_suggestions, :status, :text
  end
end
