class AddPublicationTitleColumn < ActiveRecord::Migration[4.2]
  def change
    add_column :sources, :name, :text
  end
end
