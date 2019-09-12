class AddIsReviewToSources < ActiveRecord::Migration[4.2]
  def change
    add_column :sources, :is_review, :boolean, index: true
  end
end
