class AddStatusColumnToAssertions < ActiveRecord::Migration[4.2]
  def change
    add_column :assertions, :status, :text, null: false, default: 'submitted', index: true
  end
end
