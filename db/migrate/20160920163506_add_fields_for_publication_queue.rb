class AddFieldsForPublicationQueue < ActiveRecord::Migration[4.2]
  def change
    add_column :sources, :status, :text, null: false, default: 'fully curated'
    add_column :sources, :curation_suggestions, :text
  end
end
