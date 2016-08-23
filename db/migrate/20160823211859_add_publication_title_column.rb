class AddPublicationTitleColumn < ActiveRecord::Migration
  def change
    add_column :sources, :name, :text
  end
end
