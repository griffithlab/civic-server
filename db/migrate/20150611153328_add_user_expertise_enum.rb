class AddUserExpertiseEnum < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :area_of_expertise, :integer
  end
end
