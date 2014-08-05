class InitialSchema < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name, null: false
      t.string :url
      t.string :nickname
      t.timestamps
    end

    create_table :authorizations do |t|
      t.integer :user_id, null: false
      t.string :provider, null: false
      t.string :uid, null: false
      t.timestamps
      t.foreign_key :users
    end

    create_table :roles do |t|
      t.string :name, null: false
      t.text :description
      t.timestamps
    end

    create_join_table :roles, :users do |t|
      t.integer :user_id, null: false
      t.integer :role_id, null: false
      t.foreign_key :roles
      t.foreign_key :users
      t.timestamps
    end

    add_index :roles_users, [:role_id, :user_id]

    create_table :comments do |t|
      t.string :item_type, null: false
      t.integer :item_id, null: false
      t.text :content, null: false
      t.integer :user_id, null: false
      t.foreign_key :users
      t.timestamps
    end

    add_index :comments, [:item_type, :item_id]

    create_table :definitions do |t|
      t.string :term, null: false, unique: true
      t.text :text, null: false
    end

    add_index :definitions, :term

    create_table :drugs do |t|
      t.string :name, null: false
    end

    create_table :diseases do |t|
      t.integer :doid, null: false
      t.string :name, null: false
    end

    create_table :sources do |t|
      t.string :pubmed_id, null: false
      t.text :description
    end

    create_table :evidence_levels do |t|
      t.string :level, null: false
      t.text :description, null: false
    end

    create_table :evidence_types do |t|
      t.string :type, null: false
    end

    create_table :genes do |t|
      t.integer :entrez_id, null: false
      t.string :name, null: false
      t.text :description, null: false
    end

    create_table :categories do |t|
      t.string :name, null: false
    end

    create_join_table :categories, :genes do |t|
      t.integer :category_id, null: false
      t.integer :gene_id, null: false
      t.foreign_key :categories
      t.foreign_key :genes
      t.text :citation
    end

    add_index :categories_genes, [:category_id, :gene_id]

    create_table :protein_functions do |t|
      t.string :name, null: false
    end

    create_join_table :protein_functions, :genes do |t|
      t.integer :protein_function_id, null: false
      t.integer :gene_id, null: false
      t.foreign_key :protein_functions
      t.foreign_key :genes
      t.text :citation
    end

    add_index :genes_protein_functions, [:protein_function_id, :gene_id], name: 'idx_genes_protein_functions'

    create_table :protein_motifs do |t|
      t.string :name, null: false
    end

    create_join_table :protein_motifs, :genes do |t|
      t.integer :protein_motif_id, null: false
      t.integer :gene_id, null: false
      t.foreign_key :protein_motifs
      t.foreign_key :genes
      t.text :citation
    end

    add_index :genes_protein_motifs, [:protein_motif_id, :gene_id]

    create_table :pathways do |t|
      t.string :name, null: false
    end

    create_join_table :pathways, :genes do |t|
      t.integer :pathway_id, null: false
      t.integer :gene_id, null: false
      t.foreign_key :pathways
      t.foreign_key :genes
      t.text :citation
    end

    add_index :genes_pathways, [:pathway_id, :gene_id]

    create_table :events do |t|
      t.integer :gene_id, null: false
      t.foreign_key :genes
      t.string :name, null: false
      t.text :description, null: false
    end

    create_table :event_groups do |t|
      t.string :name, null: false
      t.text :description, null: false
    end

    create_join_table :events, :event_groups do |t|
      t.integer :event_id, null: false
      t.integer :event_group_id, null: false
      t.foreign_key :events
      t.foreign_key :event_groups
    end

    add_index :event_groups_events, [:event_id, :event_group_id]

    create_table :evidence_items do |t|
      t.text :explanation, null: false
      t.string :outcome
      t.string :clinical_direction
      t.integer :evidence_type_id
      t.integer :evidence_level_id
      t.integer :drug_id
      t.integer :disease_id
      t.integer :source_id
      t.integer :event_id, null: false
      t.foreign_key :evidence_types
      t.foreign_key :evidence_levels
      t.foreign_key :drugs
      t.foreign_key :diseases
      t.foreign_key :sources
      t.foreign_key :events, null: false
    end

    create_table :ratings do |t|
      t.integer :value, null: false
      t.integer :evidence_item_id, null: false
      t.integer :user_id, null: false
      t.foreign_key :evidence_items, null: false
      t.foreign_key :users, null: false
    end

    add_index :ratings, [:evidence_item_id, :user_id]
  end
end
