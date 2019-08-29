class AddBioAndFeaturedFlag < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :featured_expert, :boolean, default: false
    add_column :users, :bio, :text
  end
end
