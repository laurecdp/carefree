class Code < ApplicationRecord
  has_many :labour_codes

  CATEGORIES = ['Césarienne', 'Travail spontané', 'Acte', 'Complication', 'Pharmacie']
  validates :category, inclusion: { in: CATEGORIES }

end
