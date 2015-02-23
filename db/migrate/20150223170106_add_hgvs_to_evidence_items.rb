class AddHgvsToEvidenceItems < ActiveRecord::Migration
  def change
    add_column :evidence_items, :variant_hgvs, :string
  end
end
