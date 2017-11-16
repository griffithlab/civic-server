class ChangeEvidenceTypeToInteger < ActiveRecord::Migration
  def up
    change_column :assertions, :evidence_type, 'integer USING CAST(evidence_type AS integer)'
  end

  def down
    change_column :assertions, :evidence_type, :text
  end
end
