class AddDeleteColumnToAssertions < ActiveRecord::Migration[4.2]
  def change
    add_column :assertions, :deleted, :boolean, default: false, index: true
  end
end
