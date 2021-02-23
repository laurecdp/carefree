class Action < ApplicationRecord
  has_many :action_codes
  belongs_to :patient
  belongs_to :category
  belongs_to :user
end
