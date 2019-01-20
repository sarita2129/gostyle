class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.integer :user_id
      t.integer :seller_id
      t.text :description
      t.date :contract_from
      t.date :contract_to
      t.text :status

      t.timestamps
    end
  end
end
