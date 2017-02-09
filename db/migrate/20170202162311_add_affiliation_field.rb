class AddAffiliationField < ActiveRecord::Migration
  def change
    add_column :users, :affiliation, :text
  end
end
