class Action < ApplicationRecord
  has_many :action_codes
  belongs_to :patient
  belongs_to :category
  belongs_to :user

  # STARTOFLABOUR = "('travail spontané', 'déclenchement artificiel', 'césarienne avant travail')"
  # validates :startoflabour, inclusion: { in: STARTOFLABOUR }

  # LABOURDATE = "('date')"
  # validates :labourdate, presence: true

  # DRUGSLABOUR = "('antibiotiques', 'anthypertenseurs', 'antispasmodiques', 'tocolytiques', 'oxytociques', 'sédatifs')"
  # validates :drugslabour, inclusion: { in: DRUGSLABOUR }

  # ENDOFLABOUR = "('heure de la délivrance', 'dirigé', 'naturelle', 'compléte', 'incomplete')"
  # validates :endoflabour, inclusion: { in: ENDOFLABOUR }

  # ANAESTHESIA = "('anesthésie avant la naissance', 'anesthésie loco-régionale', 'anesthécie générale', 'anesthécie locale')"
  # validates :anaesthesia, inclusion: { in: ANAESTHESIA }
end
