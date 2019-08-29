class AddDrugAliasTable < ActiveRecord::Migration[4.2]
  def change
    create_table :drug_aliases do |t|
      t.column :name, :string, index: true
    end

    create_table :drug_aliases_drugs do |t|
      t.belongs_to :drug, index: true
      t.belongs_to :drug_alias, index: true
    end
  end
end
