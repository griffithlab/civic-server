class ChangeFdaOnAssertions < ActiveRecord::Migration
  def up
    remove_column :assertions, :fda_approval_information
    remove_column :assertions, :fda_approved

    create_table :regulatory_agencies do |t|
      t.text :abbreviation
      t.text :name
      t.integer :country_id
    end
    add_index :regulatory_agencies, :abbreviation
    add_foreign_key :regulatory_agencies, :countries
    RegulatoryAgency.create :abbreviation => 'FDA', :name => 'Food and Drug Administration', :country_id => Country.where(iso: 'US').first.id
    RegulatoryAgency.create :abbreviation => 'BfArM', :name => 'Bundesinstitut für Arzneimittel und Medizinprodukte (Federal Institute for Drugs and Medical Devices)', :country_id => Country.where(iso: 'DE').first.id

    create_join_table :regulatory_agencies, :assertions do |t|
      t.integer :regulatory_agency_id, null: false
      t.integer :assertion_id, null: false
    end
    add_index :assertions_regulatory_agencies, [:assertion_id, :regulatory_agency_id], name: 'index_assertion_id_regulatory_agency_id'
    add_index :assertions_regulatory_agencies, :assertion_id
    add_foreign_key :assertions_regulatory_agencies, :regulatory_agencies
    add_foreign_key :assertions_regulatory_agencies, :assertions

    add_column :assertions, :fda_companion_test, :boolean
  end

  def down
    remove_column :assertions, :fda_companion_test
    drop_table :assertions_regulatory_agencies
    drop_table :regulatory_agencies
    add_column :assertions, :fda_approval_information, :text
    add_column :assertions, :fda_approved, :boolean
  end
end
