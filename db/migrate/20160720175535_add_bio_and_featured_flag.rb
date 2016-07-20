class AddBioAndFeaturedFlag < ActiveRecord::Migration
  def change
    add_column :users, :featured_expert, :boolean, default: false
    add_column :users, :bio, :text
  end
end
