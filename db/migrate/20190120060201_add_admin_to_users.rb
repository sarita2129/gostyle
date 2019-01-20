class AddAdminToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :admin, :text
  end
end
