class MakeDoidAString < ActiveRecord::Migration
  def change
    change_column :diseases, :doid, :text
  end
end
