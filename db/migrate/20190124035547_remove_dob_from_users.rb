class RemoveDobFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :dob, :text
  end
end
