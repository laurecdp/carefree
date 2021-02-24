class Action < ApplicationRecord
  has_many :action_codes
  belongs_to :patient
  belongs_to :category
  belongs_to :user

  LABOUR_START = ['travail spontané', 'déclenchement artificiel', 'césarienne avant travail']
  validates :labour_start, inclusion: { in: LABOUR_START }

  ARTIFICIAL_LABOUR = ['activation de convenance', 'gross prolongée/dépassée', 'patho maternelle', 'patho foetale', 'mort in utero']
  validates :artificiel_labour, inclusion: { in: ARTIFICIAL_LABOUR }

  LABOUR_DRUGS = ['antibiotiques', 'anthypertenseurs', 'antispasmodiques', 'tocolytiques', 'oxytociques', 'sédatifs']
  validates :labour_drugs, inclusion: { in: LABOUR_DRUGS }

  LABOUR_END = ['dirigé', 'naturelle', 'compléte', 'incomplete']
  validates :labour_end_at, inclusion: { in: LABOUR_END_AT }

  ANAESTHESIA_CATEGORY = ['anesthésie avant la naissance', 'anesthésie loco-régionale', 'anesthésie générale', 'anesthésie locale', 'moment de l\'anestésie', 'complication de l\'anesthésie']
  validates :anaesthesia_category, inclusion: { in: ANAESTHESIA_CATEGORY }

  ANAESTHESIA_GENERAL = ['d\'emblé', 'après péridurale']
  validates :anaesthesia_general, inclusion: { in: ANAESTHESIA_GENERAL }

  ANAESTHESIA_LOCO_GENERAL = ['injection unique', 'sur cathéter auto-poussé']
  validates :anaesthesia_loco_general, inclusion: { in: ANAESTHESIA_LOCO_GENERAL }

  ANAESTHESIA_MOMENT = ['en début de travail', 'pour intervention VB', 'pour césarienne']
  validates :anaesthesia_moment, inclusion: { in: ANAESTHESIA_MOMENT }

  LABOUR_COMPLICATION_TYPE = ['hémorragies', 'actes']
  validates :labour_start_at, presence: true

  LABOUR_ACTES = ['délivrance artificelle', 'transfusion', 'Déchirure simple/suture', 'Forceps', 'ligature des artères utérine']
  validates :labour_actes, inclusion: { in: LABOUR_ACTES }
end
