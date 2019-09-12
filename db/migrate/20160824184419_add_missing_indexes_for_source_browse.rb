class AddMissingIndexesForSourceBrowse < ActiveRecord::Migration[4.2]
  def change
    add_index :authors_sources, [:author_id, :source_id]
    add_index :authors_sources, :source_id

    add_foreign_key :authors_sources, :authors
    add_foreign_key :authors_sources, :sources

    #add_index :sources, :abstract
    #add_index :sources, :name
    #add_index :sources, :full_journal_title
  end
end
