class CreateRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :ranks do |t|
      t.string :work_id
      t.string :integer
      t.string :user_id
      t.string :integer
      t.string :ranking
      t.string :float

      t.timestamps
    end
  end
end
