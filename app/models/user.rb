class User < ApplicationRecord
  has_secure_password
  has_many :works
  has_many :ranks
  has_many :seller_contracts, class_name: "Contract",foreign_key: "seller_id"
  has_many :buyer_contracts, class_name: "Contract",foreign_key: "user_id"


  # Validations: see the Rails Guide
  validates :email, :presence => true, :uniqueness => true
end
