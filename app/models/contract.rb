class Contract < ApplicationRecord
  belongs_to :user, :optional => true
end
