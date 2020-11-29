class AddColumnAddressToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :string
    add_column :users, :profile, :text
  end
end
