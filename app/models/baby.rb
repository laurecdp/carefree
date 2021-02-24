class Baby < ApplicationRecord
  belongs_to :patient

  SEX = ['masculin', 'féminin', 'indéterminé']
  validates :sex, inclusion: { in: SEX }

  MONITORINGOPTIONS = ['Fréquence cardiaque', 'Mise en incubateur', 'Saturation', 'Glycémie']
  validates :monitoring_options, inclusion: { in: MONITORINGOPTIONS }

  INTENSIVECAREOPTIONS = ['Ventilation au masque', 'Massage cardiaque', 'Incubation', 'Injection médicamenteuse']
  validates :intensivecare_options, inclusion: { in: INTENSIVECAREOPTIONS }

  INFECTIOUSCONTEXTOPTIONS = ['antibiotiques à la naissance', 'prélèvements bactériologiques','liquide amniotique teinté','fièvre maternelle > 38°', 'infection maternelle']
  validates :infectiouscontext_options, inclusion: { in: INFECTIOUSCONTEXTOPTIONS }

  EXITROOM = ['Avec sa mère', 'Décès', 'Transfert immédiat', 'Mutation intra-muros']
  validates :exit_room, inclusion: { in: EXITROOM }

  PATHOLOGIES = ['Retard de croissance', 'SIDA', 'Diabète']
  validates :pathologies, inclusion: { in: PATHOLOGIES }

  BREASTFEEDING = ['Maternel', 'Artificiel', 'Mixte']
  validates :breastfeeding, inclusion: { in: BREASTFEEDING }
end
