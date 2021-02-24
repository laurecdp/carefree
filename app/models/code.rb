class Code < ApplicationRecord
  has_many :action_codes

  CATEGORIES = ['cesarienne', 'voie naturelle', 'actes', 'complication']
  validates :category, inclusion: { in: CATEGORIES }
end
