class AddStateParamsColumnToEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :state_params, :text
  end
end
