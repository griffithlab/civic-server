class AddAscoFieldsToSource < ActiveRecord::Migration[4.2]
  def change
    add_column :sources, :asco_abstract_id, :integer
    add_column :sources, :asco_presenter, :text
    add_index :sources, :asco_abstract_id
    add_index :sources, :asco_presenter
  end
end
