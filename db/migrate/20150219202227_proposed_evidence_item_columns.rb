class ProposedEvidenceItemColumns < ActiveRecord::Migration
  def change
    add_column :evidence_items, :status, :string
    add_column :evidence_items, :remote_errors, :text
    add_column :evidence_items, :remote_ids, :text
    change_column_null :evidence_items, :variant_id, true
  end
end
