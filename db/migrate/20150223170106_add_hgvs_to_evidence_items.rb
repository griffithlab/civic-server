class AddHgvsToEvidenceItems < ActiveRecord::Migration[4.2]
  def change
    add_column :evidence_items, :variant_hgvs, :string
  end
end
