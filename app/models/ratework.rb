class Ratework < ApplicationRecord
  belongs_to :user ,:optional => true
  belongs_to :work, :optional => true
end
