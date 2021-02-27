class Code < ApplicationRecord
  has_many :labour_codes

  CATEGORIES = ['Césarienne', 'Voie naturelle', 'Actes', 'Complication']
  validates :category, inclusion: { in: CATEGORIES }
end
