class AddReferenceBuildToVariants < ActiveRecord::Migration
  def change
    add_column :variants, :reference_build, :integer
  end
end
