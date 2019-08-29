class MakeDoidAString < ActiveRecord::Migration[4.2]
  def change
    change_column :diseases, :doid, :text
  end
end
