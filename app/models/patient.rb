class Patient < ApplicationRecord
  has_many :actions
  has_many :babies
end
