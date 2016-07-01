class AddLicenseTermsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :accepted_license_term, :boolean
  end
end
