class Contract < ApplicationRecord
  # belongs_to :user, :optional => true
  belongs_to :seller, class_name: "User", :foreign_key => "seller_id" ,:optional => true
  belongs_to :buyer, class_name: "User",:foreign_key => "user_id" ,:optional => true
end
