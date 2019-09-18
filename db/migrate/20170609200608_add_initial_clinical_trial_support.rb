class AddInitialClinicalTrialSupport < ActiveRecord::Migration[4.2]
  def change
    create_table :clinical_trials do |t|
      t.text :nct_id, unique: true, index: true
      t.text :name
      t.text :description
      t.timestamps
    end

    create_join_table :clinical_trials, :sources do |t|
      t.integer :clinical_trial_id, null: false
      t.integer :source_id, null: false
      t.references :sources
      t.references :clinical_trials
    end

    add_index :clinical_trials_sources, [:clinical_trial_id, :source_id], name: 'idx_clinical_trials_sources'
    add_index :clinical_trials_sources, :source_id
  end
end
