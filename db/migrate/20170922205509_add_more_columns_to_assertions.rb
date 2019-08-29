class AddMoreColumnsToAssertions < ActiveRecord::Migration[4.2]
  def change
    add_reference :assertions, :gene, index: true
    add_reference :assertions, :variant, index: true
    add_reference :assertions, :disease, index: true
    add_column :assertions, :evidence_type, :text
  end
end
