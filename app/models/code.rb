class Code < ApplicationRecord
  has_many :labour_codes
  belongs_to :labour_code

  CATEGORIES = ['Césarienne', 'Travail spontané', 'Acte', 'Complication']
  validates :category, inclusion: { in: CATEGORIES }

end
