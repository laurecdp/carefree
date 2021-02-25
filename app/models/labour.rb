class Labour < ApplicationRecord
  has_many :labour_codes
  belongs_to :patient
  belongs_to :category
  belongs_to :user

  LABOUR_START = ['travail spontané', 'déclenchement artificiel', 'césarienne avant travail']
  validate :each_labour_start

  def each_labour_start
    labour_start.map { |lab| CATEGORIES.include?(lab) }.all?
  end

  ARTIFICIAL_LABOUR = ['activation de convenance', 'gross prolongée/dépassée', 'patho maternelle', 'patho foetale', 'mort in utero']
  validate :each_artificial_labour

  def each_artificial_labour
    artificial_labour.map { |lab| CATEGORIES.include?(lab) }.all?
  end

  LABOUR_DRUGS = ['antibiotiques', 'anthypertenseurs', 'antispasmodiques', 'tocolytiques', 'oxytociques', 'sédatifs']
  validate :each_labour_drugs

  def each_labour_drugs
    labour_drugs.map { |lab| CATEGORIES.include?(lab) }.all?
  end

  LABOUR_END = ['dirigé', 'naturelle', 'compléte', 'incomplete']
  validate :each_labour_end

  def each_labour_end
    labour_end.map { |lab| CATEGORIES.include?(lab) }.all?
  end

  ANAESTHESIA_CATEGORY = ['anesthésie avant la naissance', 'anesthésie loco-régionale', 'anesthésie générale', 'anesthésie locale', 'moment de l\'anestésie', 'complication de l\'anesthésie']
  validate :each_anaesthesia_category

  def each_anaesthesia_category
    anaesthesia_category.map { |lab| CATEGORIES.include?(lab) }.all?
  end

  ANAESTHESIA_GENERAL = ['d\'emblé', 'après péridurale']
  validate :each_anaesthesia_general

  def each_anaesthesia_general
    anaesthesia_general.map { |lab| CATEGORIES.include?(lab) }.all?
  end

  ANAESTHESIA_LOCO_GENERAL = ['injection unique', 'sur cathéter auto-poussé']
  validate :each_anaesthesia_loco_general

  def each_anaesthesia_loco_general
    anaesthesia_loco_general.map { |lab| CATEGORIES.include?(lab) }.all?
  end

  ANAESTHESIA_MOMENT = ['en début de travail', 'pour intervention VB', 'pour césarienne']
  validate :each_anaesthesia_moment

  def each_anaesthesia_moment
    anaesthesia_moment.map { |lab| CATEGORIES.include?(lab) }.all?
  end

  LABOUR_COMPLICATION_TYPE = ['hémorragies', 'actes']
  validate :each_labour_complication_type

  def each_labour_complication_type
    labour_complication_type.map { |lab| CATEGORIES.include?(lab) }.all?
  end

  LABOUR_ACTES = ['délivrance artificelle', 'transfusion', 'Déchirure simple/suture', 'Forceps', 'ligature des artères utérine']
  validate :each_labour_actes

  def each_labour_actes
    labour_actes.map { |lab| CATEGORIES.include?(lab) }.all?
  end
end
