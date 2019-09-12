class AddReasonFieldToSourceSuggestion < ActiveRecord::Migration[4.2]
  def change
    add_column :source_suggestions, :reason, :text
  end
end
