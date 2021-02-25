class Code < ApplicationRecord
  has_many :labour_codes

  CATEGORIES = ['césarienne', 'voie naturelle', 'Actes', 'Complication']
  validates :category, inclusion: { in: CATEGORIES }
end
