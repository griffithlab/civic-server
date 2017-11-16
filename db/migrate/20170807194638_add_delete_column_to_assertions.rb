class AddDeleteColumnToAssertions < ActiveRecord::Migration
  def change
    add_column :assertions, :deleted, :boolean, default: false, index: true
  end
end
