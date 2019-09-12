class AddDomainExpertTagging < ActiveRecord::Migration[4.2]
  def change
    create_table :domain_expert_tags do |t|
      t.text :description
      t.timestamps
      t.references :domain_of_expertise, polymorphic: true
      t.references :user
      t.foreign_key :users
      t.index [:domain_of_expertise_id, :domain_of_expertise_type], name: 'idx_domain_of_expertise'
      t.index :user_id
      t.index :description
    end
  end
end
