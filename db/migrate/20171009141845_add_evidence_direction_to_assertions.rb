class AddEvidenceDirectionToAssertions < ActiveRecord::Migration[4.2]
  def change
    add_column :assertions, :evidence_direction, :integer
  end
end
