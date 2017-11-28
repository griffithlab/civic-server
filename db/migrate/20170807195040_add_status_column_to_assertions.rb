class AddStatusColumnToAssertions < ActiveRecord::Migration
  def change
    add_column :assertions, :status, :text, null: false, default: 'submitted', index: true
  end
end
