class AddAffiliationField < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :affiliation, :text
  end
end
