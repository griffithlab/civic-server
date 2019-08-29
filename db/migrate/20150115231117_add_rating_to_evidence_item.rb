class AddRatingToEvidenceItem < ActiveRecord::Migration[4.2]
  def change
    add_column :evidence_items, :rating, :integer
  end
end
