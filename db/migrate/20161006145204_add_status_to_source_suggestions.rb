class AddStatusToSourceSuggestions < ActiveRecord::Migration[4.2]
  def change
    add_column :source_suggestions, :status, :text
  end
end
