class AddIsReviewToSources < ActiveRecord::Migration
  def change
    add_column :sources, :is_review, :boolean, index: true
  end
end
