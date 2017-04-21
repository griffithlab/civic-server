class AddMinorRevisionToSuggestedChange < ActiveRecord::Migration
  def change
    add_column :suggested_changes, :is_minor, :boolean
  end
end
