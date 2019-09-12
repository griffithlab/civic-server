class AddReferenceBuildToVariants < ActiveRecord::Migration[4.2]
  def change
    add_column :variants, :reference_build, :integer
  end
end
