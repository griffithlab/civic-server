class AddMoreColumnsToAssertions < ActiveRecord::Migration
  def change
    add_reference :assertions, :gene, index: true
    add_reference :assertions, :variant, index: true
    add_reference :assertions, :disease, index: true
    add_column :assertions, :evidence_type, :text
  end
end
