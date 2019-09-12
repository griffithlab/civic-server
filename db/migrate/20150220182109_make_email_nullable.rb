class MakeEmailNullable < ActiveRecord::Migration[4.2]
  def change
    change_column_null :users, :name, true
  end
end
