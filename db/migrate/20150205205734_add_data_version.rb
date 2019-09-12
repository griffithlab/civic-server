class AddDataVersion < ActiveRecord::Migration[4.2]
  def change
    create_table :data_versions do |t|
      t.integer :version, default: 0
    end
  end
end
