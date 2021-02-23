class Category < ApplicationRecord
  has_many :actions

  CATEGORIES = %w(Nouvelle naissance Hospitalisation Admission Consultation Ordonnance)
  validates :categories, inclusion: { in: CATEGORIES }
end
