class Labour < ApplicationRecord
  belongs_to :patient
  belongs_to :category
  belongs_to :user

  has_many :labour_codes
  has_many :babies, through: :patient

  accepts_nested_attributes_for :babies
  accepts_nested_attributes_for :labour_codes

  LABOUR_START = ['Travail spontané', 'Déclenchement artificiel', 'Césarienne avant travail']

  ARTIFICIAL_LABOUR = ['Activation de convenance', 'Grossesse prolongée/dépassée', 'Pathologie maternelle', 'Pathologie foetale', 'Mort in utero']

  LABOUR_END = ['Dirigée', 'Naturelle', 'Complète', 'Incomplète']

  ANAESTHESIA_CATEGORY = ['Anesthésie loco-régionale', 'Anesthésie générale']

  ANAESTHESIA_GENERAL = ['D\'emblée', 'Post péridurale', 'Après rachianesthésie']

  ANAESTHESIA_LOCO_GENERAL = ['Injection unique', 'Péridurale', 'Sur cathéter auto-poussé']

  ANAESTHESIA_MOMENT = ['En début de travail', 'Pour intervention VB', 'Pour césarienne']
  # validates :anaesthesia_moment, inclusion: { in: ANAESTHESIA_MOMENT }

  LABOUR_DRUGS = ['Antibiotiques', 'Anthypertenseurs', 'Antispasmodiques', 'Tocolytiques', 'Oxytociques', 'Sédatifs']
  # validate :each_labour_drugs

  LABOUR_COMPLICATION_TYPE = ['Hémorragies', 'Rétention placentaire', 'Inversion utérine']
  # validate :each_labour_complication_type

  LABOUR_ACTES = ['Délivrance artificelle', 'Transfusion', 'Déchirure simple/suture', 'Embolisation artérielle', 'Ligature des artères utérines']
  # validate :each_labour_actes

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
