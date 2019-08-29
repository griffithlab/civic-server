class ChangeNccnGuidelineOnAssertions < ActiveRecord::Migration[4.2]
  def up
    remove_column :assertions, :nccn_guideline
    add_column :assertions, :nccn_guideline, :integer
    add_column :assertions, :nccn_guideline_version, :text
  end

  def down
    remove_column :assertions, :nccn_guideline
    add_column :assertions, :nccn_guideline, :text
    remove_column :assertions, :nccn_guideline_version
  end
end
