class CreateAssertionPhenotypeJoinTable < ActiveRecord::Migration
  def change
    create_join_table :assertions, :phenotypes do |t|
      t.index [:assertion_id, :phenotype_id]
    end
    add_index :assertions_phenotypes, [:phenotype_id]
    add_foreign_key :assertions_phenotypes, :assertions
    add_foreign_key :assertions_phenotypes, :phenotypes
  end
end
