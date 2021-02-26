class Baby < ApplicationRecord
  SEX = ['masculin', 'féminin', 'indéterminé']
  validates :sex, inclusion: { in: SEX }

  MONITORINGOPTIONS = ['Fréquence cardiaque', 'Mise en incubateur', 'Saturation', 'Glycémie']
  validate :each_monitoring_options

  INTENSIVECAREOPTIONS = ['Ventilation au masque', 'Massage cardiaque', 'Incubation', 'Injection médicamenteuse']
  validate :each_intensive_care_options

  INFECTIOUSCONTEXTOPTIONS = ['antibiotiques à la naissance', 'prélèvements bactériologiques','liquide amniotique teinté','fièvre maternelle > 38°', 'infection maternelle']
  validate :each_infectious_context_options

  EXITROOM = ['Avec sa mère', 'Décès', 'Transfert immédiat', 'Mutation intra-muros']
  validates :exit_room, inclusion: { in: EXITROOM }

  PATHOLOGIES = ['Retard de croissance', 'SIDA', 'Diabète']
  validate :each_pathologies

  BREASTFEEDING = ['Maternel', 'Artificiel', 'Mixte']
  validates :breastfeeding, inclusion: { in: BREASTFEEDING }

  belongs_to :patient

  private

  def each_monitoring_options
    monitoring_options.map { |baby| MONITORINGOPTIONS.include?(baby) }.all?
  end

  def each_intensive_care_options
    intensivecare_options.map { |baby| INTENSIVECAREOPTIONS.include?(baby) }.all?
  end

  def each_infectious_context_options
    infectiouscontext_options.map { |baby| INFECTIOUSCONTEXTOPTIONS.include?(baby) }.all?
  end

  def each_pathologies
    pathologies.map { |baby| PATHOLOGIES.include?(baby) }.all?
  end
end
