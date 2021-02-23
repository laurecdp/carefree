class Category < ApplicationRecord
  has_many :actions

  CATEGORIES = %w(Accouchement Hospitalisation Admission Consultation Ordonnance)
  validates :name, presence: true
  validates :categories, inclusion: { in: CATEGORIES }
end
