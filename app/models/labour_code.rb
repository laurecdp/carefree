class LabourCode < ApplicationRecord
  belongs_to :code
  has_many :codes
  
  belongs_to :labour
  
end
