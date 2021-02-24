class Code < ApplicationRecord
  has_many :action_codes

  CATEGORIES = ['césarienne', 'voie naturelle', 'Actes', 'Complication']
  validate :each_category

  private

  def each_category
    category.map { |cat| CATEGORIES.include?(cat) }.all?
  end

end
