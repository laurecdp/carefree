class Labour < ApplicationRecord
  has_many :labour_codes
  belongs_to :patient
  belongs_to :category
  belongs_to :user

  LABOUR_START = ['travail spontané', 'déclenchement artificiel', 'césarienne avant travail']
  validates :labour_start, inclusion: { in: LABOUR_START }

  ARTIFICIAL_LABOUR = ['activation de convenance', 'gross prolongée/dépassée', 'patho maternelle', 'patho foetale', 'mort in utero']
  validates :artificial_labour, inclusion: { in: ARTIFICIAL_LABOUR }

  LABOUR_END = ['dirigé', 'naturelle', 'compléte', 'incomplete']
  validates :labour_end, inclusion: { in: LABOUR_END }

  ANAESTHESIA_CATEGORY = ['anesthésie avant la naissance', 'anesthésie loco-régionale', 'anesthésie générale', 'anesthésie locale', 'moment de l\'anestésie', 'complication de l\'anesthésie']
  validates :anaesthesia_category, inclusion: { in: ANAESTHESIA_CATEGORY }

  ANAESTHESIA_GENERAL = ['d\'emblé', 'après péridurale']
  validates :anaesthesia_general, inclusion: { in: ANAESTHESIA_GENERAL }

  ANAESTHESIA_LOCO_GENERAL = ['injection unique', 'sur cathéter auto-poussé']
  validates :anaesthesia_loco_general, inclusion: { in: ANAESTHESIA_LOCO_GENERAL }

  ANAESTHESIA_MOMENT = ['en début de travail', 'pour intervention VB', 'pour césarienne']
  validates :anaesthesia_moment, inclusion: { in: ANAESTHESIA_MOMENT }

  LABOUR_DRUGS = ['antibiotiques', 'anthypertenseurs', 'antispasmodiques', 'tocolytiques', 'oxytociques', 'sédatifs']
  validate :each_labour_drugs

  LABOUR_COMPLICATION_TYPE = ['hémorragies', 'actes']
  validate :each_labour_complication_type

  LABOUR_ACTES = ['délivrance artificelle', 'transfusion', 'Déchirure simple/suture', 'Forceps', 'ligature des artères utérine']
  validate :each_labour_actes

  private

  def each_labour_complication_type
    labour_complication_type.map { |lab| CATEGORIES.include?(lab) }.all?
  end

  def each_labour_actes
    labour_actes.map { |lab| CATEGORIES.include?(lab) }.all?
  end

  def each_labour_drugs
    labour_drugs.map { |lab| CATEGORIES.include?(lab) }.all?
  end
end
