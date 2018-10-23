class AddEvidenceDirectionToAssertions < ActiveRecord::Migration
  def change
    add_column :assertions, :evidence_direction, :integer
  end
end
