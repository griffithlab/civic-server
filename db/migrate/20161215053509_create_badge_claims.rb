class CreateBadgeClaims < ActiveRecord::Migration[4.2]
  def change
    create_table :badge_claims do |t|
      t.references :user, index: true, foreign_key: true
      t.references :badge, index: true, foreign_key: true
      t.string :redemption_code

      t.timestamps null: false
    end
  end
end
