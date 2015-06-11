class AddUserExpertiseEnum < ActiveRecord::Migration
  def change
    add_column :users, :area_of_expertise, :integer
  end
end
