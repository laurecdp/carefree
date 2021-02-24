class Baby < ApplicationRecord
  belongs_to :patient

  SEX = "('masculin', 'féminin', 'indéterminé')"
  validates :sex, inclusion: { in: SEX }

  MONITORINGOPTIONS = "('Fréquence cardiaque', 'Mise en incubateur', 'Saturation', 'Glycémie')"
  validates :monitoring_options, inclusion: { in: MONITORINGOPTIONS }

  INTENSIVECAREOPTIONS = "('Ventilation au masque', 'Massage cardiaque', 'Incubation', 'Injection médicamenteuse')"
  validates :intensivecare_options, inclusion: { in: INTENSIVECAREOPTIONS }

  INFECTIOUSCONTEXTOPTIONS = "('antibiotiques à la naissance','prélèvements bactériologiques','liquide amniotique teinté', 'fièvre maternelle > 38°', 'infection maternelle')"
  validates :infectiouscontext_options, inclusion: { in: INFECTIOUSCONTEXTOPTIONS }

  MENSURATIONS = "('Poids', 'Taille', 'Périmètre cranien')"
  validates :mensurations, inclusion: { in: MENSURATIONS }

  EXITROOM = "('Avec sa mère', 'Décès', 'Transfert immédiat', 'Mutation intra-muros)"
  validates :exit_room, inclusion: { in: EXITROOM }

  PATHOLOGIES = "('Avec sa mère', 'Décès', 'Transfert immédiat', 'Mutation intra-muros)"
  validates :pathologies, inclusion: { in: PATHOLOGIES }

  BREASTFEEDING = "('Maternel', 'Artificiel', 'Mixte')"
  validates :breastfeeding, inclusion: { in: BREASTFEEDING }


end

:sex
:monitoring :boolean default: {false}
:monitoring_options
:intensivecare :boolean default: {false}
:intensivecare_options
:malformation :boolean default: {false}
:infectiouscontext :boolean default: {false}
:infectiouscontext_options
:mensurations 
:exit_room
:weight 
:height 
:head_circumference
:pathologies
:breastfeeding
:date_of_birth
