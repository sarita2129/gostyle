class Contract < ApplicationRecord
  # belongs_to :user, :optional => true
  belongs_to :seller, class_name: "User", :foreign_key => "seller_id" ,:optional => true
  belongs_to :buyer, class_name: "User",:foreign_key => "user_id" ,:optional => true

  # validates :contract_from, presence: true
  # validate :must_have_valid_future_date
  #
  # private
  # def must_have_valid_future_date
  #   if contract_from.present?
  #       if contract_from < Date.today
  #           errors.add(:contract_from, "can't be in the past")
  #       end
  #   end
  # end

end
