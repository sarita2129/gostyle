class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :password_digest
      t.text :admin
      t.text :name
      t.text :dob
      t.text :image
      t.text :address
      t.text :phone
      t.text :companyname
      t.text :companyaddress
      t.text :companywebsite
      t.text :companycontactinfo

      t.timestamps
    end
  end
end
