class AddReasonFieldToSourceSuggestion < ActiveRecord::Migration
  def change
    add_column :source_suggestions, :reason, :text
  end
end
