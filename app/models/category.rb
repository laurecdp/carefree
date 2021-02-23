class Category < ApplicationRecord
  has_many :actions

  CATEGORIES = %w(Nouvelle naissance Hospitalisation Admission Consultation Ordonnances)
  validates :name, presence: true
  validates :categories, inclusion: { in: CATEGORIES }
end
