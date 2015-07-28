class AddStateParamsColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :state_params, :text
  end
end
