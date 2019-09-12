class RemoveProposedRevisions < ActiveRecord::Migration[4.2]
  def change
    drop_table :proposed_revisions
  end
end
