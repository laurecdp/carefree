class Labour < ApplicationRecord
  belongs_to :patient
  belongs_to :category
  belongs_to :user

  has_many :labour_codes
  has_many :babies, through: :patient

  accepts_nested_attributes_for :babies
  accepts_nested_attributes_for :labour_codes

  LABOUR_START = ['Travail spontané', 'Déclenchement artificiel', 'Césarienne avant travail']
  validates :labour_start, inclusion: { in: LABOUR_START }

  ARTIFICIAL_LABOUR = ['Activation de convenance', 'Grossesse prolongée/dépassée', 'Pathologie maternelle', 'Pathologie foetale', 'Mort in utero']
  validates :artificial_labour, inclusion: { in: ARTIFICIAL_LABOUR }

  LABOUR_END = ['Dirigée', 'Naturelle', 'Complète', 'Incomplète']
  validates :labour_end, inclusion: { in: LABOUR_END }

  ANAESTHESIA_CATEGORY = ['Anesthésie loco-régionale', 'Anesthésie générale', 'Anesthésie locale']
  validates :anaesthesia_category, inclusion: { in: ANAESTHESIA_CATEGORY }

  ANAESTHESIA_GENERAL = ['D\'emblée', 'Post péridurale', 'Après rachianesthésie']
  validates :anaesthesia_general, inclusion: { in: ANAESTHESIA_GENERAL }

  ANAESTHESIA_LOCO_GENERAL = ['Injection unique', 'Péridurale', 'Sur cathéter auto-poussé']
  validates :anaesthesia_loco_general, inclusion: { in: ANAESTHESIA_LOCO_GENERAL }

  ANAESTHESIA_MOMENT = ['En début de travail', 'Pour intervention VB', 'Pour césarienne']
  validates :anaesthesia_moment, inclusion: { in: ANAESTHESIA_MOMENT }

  LABOUR_DRUGS = ['Antibiotiques', 'Anthypertenseurs', 'Antispasmodiques', 'Tocolytiques', 'Oxytociques', 'Sédatifs']
  validate :each_labour_drugs

  LABOUR_COMPLICATION_TYPE = ['Hémorragies', 'Rétention placentaire', 'Inversion utérine']
  validate :each_labour_complication_type

  LABOUR_ACTES = ['Délivrance artificelle', 'Transfusion', 'Déchirure simple/suture', 'Embolisation artérielle', 'Ligature des artères utérines']
  validate :each_labour_actes

  private

  def each_labour_complication_type
    labour_complication_type.map { |lab| LABOUR_COMPLICATION_TYPE.include?(lab) }.all?
  end

  def each_labour_actes
    labour_actes.map { |lab| LABOUR_ACTES.include?(lab) }.all?
  end

  def each_labour_drugs
    labour_drugs.map { |lab| LABOUR_DRUGS.include?(lab) }.all?
  end
end
