class AddRatingToEvidenceItem < ActiveRecord::Migration
  def change
    add_column :evidence_items, :rating, :integer
  end
end
