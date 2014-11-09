class RemoveProposedRevisions < ActiveRecord::Migration
  def change
    drop_table :proposed_revisions
  end
end
