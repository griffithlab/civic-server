class AddSummaryToAssertions < ActiveRecord::Migration[4.2]
  def change
    add_column :assertions, :summary, :text
  end
end
