class AddAuthorsToSources < ActiveRecord::Migration
  def change
    create_table :publication_authors do |t|
      t.text :last_name
      t.text :fore_name
      t.timestamps
    end

    create_join_table :sources, :publication_authors do |t|
      t.integer :source_id
      t.integer :publication_author_id
      t.timestamps
    end

    add_index :publication_authors_sources, [:source_id, :publication_author_id], name: 'idx_publication_author_source_id'

    add_column :sources, :abstract, :text
    add_column :sources, :open_access, :boolean
    add_column :sources, :pmc_id, :text
    add_column :sources, :publication_year, :integer
    add_column :sources, :publication_month, :integer
    add_column :sources, :publication_day, :integer
    add_column :sources, :journal, :text
  end
end
