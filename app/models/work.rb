class Work < ApplicationRecord
  include PgSearch
  pg_search_scope :search_full_text, against: %i(title description), using: { tsearch: {:prefix => true} }

  belongs_to :user, :optional => true
  has_many :rateworks
end
