class EnableUuidExtension < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :badge_claims, id: :uuid, default: "uuid_generate_v4()", force: true do |t|
      t.references :user, index: true, foreign_key: true
      t.references :badge, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
