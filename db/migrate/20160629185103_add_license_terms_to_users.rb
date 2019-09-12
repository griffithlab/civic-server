class AddLicenseTermsToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :accepted_license_term, :boolean
  end
end
