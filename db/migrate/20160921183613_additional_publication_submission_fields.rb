class AdditionalPublicationSubmissionFields < ActiveRecord::Migration[4.2]
  def change
    remove_column :sources, :curation_suggestions

    create_table :source_suggestions do |t|
      t.integer :source_id, references: :sources
      t.integer :user_id, references: :users
      t.text :gene_name
      t.text :disease_name
      t.text :variant_name
    end
  end
end
