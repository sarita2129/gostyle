class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.integer :user_id
      t.text :image
      t.text :title
      t.text :description
      t.integer :visit

      t.timestamps
    end
  end
end
