class AddSummaryToAssertions < ActiveRecord::Migration
  def change
    add_column :assertions, :summary, :text
  end
end
