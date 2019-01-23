class CreateRateworks < ActiveRecord::Migration[5.2]
  def change
    create_table :rateworks do |t|
      t.integer :work_id
      t.integer :user_id
      t.float :ranking

      t.timestamps
    end
  end
end
