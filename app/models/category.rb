class Category < ApplicationRecord
  has_many :labours

  CATEGORIES = ['Naissance', 'Hospitalisation', 'Admission', 'Consultation', 'Ordonnance']
  validates :name, inclusion: { in: CATEGORIES }
end
