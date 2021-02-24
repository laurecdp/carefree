class Patient < ApplicationRecord
  has_many :labours
  has_many :babies, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_last_name_and_first_name,
   against: [:last_name, :first_name],
   using: {
     tsearch: { prefix: true }
   }
end
