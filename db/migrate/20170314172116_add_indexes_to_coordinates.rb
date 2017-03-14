class AddIndexesToCoordinates < ActiveRecord::Migration
  def change
    add_index :variants, :chromosome
    add_index :variants, :start
    add_index :variants, :stop
    add_index :variants, :chromosome2
    add_index :variants, :start2
    add_index :variants, :stop2
    add_index :variants, :name
    add_index :variants, :reference_bases
    add_index :variants, :variant_bases
  end
end
