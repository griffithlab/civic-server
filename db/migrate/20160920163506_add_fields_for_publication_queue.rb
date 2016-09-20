class AddFieldsForPublicationQueue < ActiveRecord::Migration
  def change
    add_column :sources, :status, :text, null: false, default: 'fully curated'
    add_column :sources, :curation_suggestions, :text
  end
end
