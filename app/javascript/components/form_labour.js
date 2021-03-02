const searchForm = () => {
 
  /* Partie 1 du Form "Résumé de l'accouchement */
  if (document.getElementById("msform")) {

    const tagItem = document.querySelectorAll(".tag-item");
     tagItem.forEach(element => {
       element.addEventListener("click", (event) => {

         if (element.querySelector("input").id === "labour_labour_start_travail_spontané") {
          document.getElementById("travail-spontane-checkbox").style.display = "block"
           document.getElementById("cesarienne-checkbox").style.display = "none"
           document.getElementById("artificial-labour").style.display = "none"
           document.getElementById("labour_drugs").style.display = "none"
           document.getElementById("pharmacie-checkbox").style.display = "none"
          
         } else if (element.querySelector("input").id === "labour_labour_start_déclenchement_artificiel") {
           document.getElementById("travail-spontane-checkbox").style.display = "block"
           document.getElementById("cesarienne-checkbox").style.display = "none"
           document.getElementById("artificial-labour").style.display = "block"
           document.getElementById("labour_drugs").style.display = "block"
           document.getElementById("pharmacie-checkbox").style.display = "block"

         } else if (element.querySelector("input").id === "labour_labour_start_césarienne_avant_travail") {
           document.getElementById("cesarienne-checkbox").style.display = "block"
           document.getElementById("travail-spontane-checkbox").style.display = "none"
           document.getElementById("artificial-labour").style.display = "block"
           document.getElementById("labour_drugs").style.display = "block"
           document.getElementById("pharmacie-checkbox").style.display = "block"
         }
    
       });
     });
    
    /* Partie 2 du Form "Anésthésie */
    /* If yes */
    const inputYesAnesthesia = document.getElementById("labour_anaesthesia_oui");

    inputYesAnesthesia.addEventListener("click", (event) => {
      document.getElementById("moment-anesthesia").style.display = "block" 
      document.getElementById("category-anesthesia").style.display = "block"
      document.getElementById("anesthia-checkbox").style.display = "block"
      
      let categoryAnesthesia = document.getElementById("category-anesthesia")
      categoryAnesthesia.style.display = "block"

        const tagItem = document.querySelectorAll(".tag-item");
        tagItem.forEach(element => {
          element.addEventListener("click", (event) => {
            if (element.querySelector("input").id === "labour_anaesthesia_category_anesthésie_loco-régionale") {
              document.getElementById("anesthesia-loco-general").style.display = "block"
              document.getElementById("anesthesia-general").style.display = "none"
            } else if (element.querySelector("input").id === "labour_anaesthesia_category_anesthésie_générale") {
              document.getElementById("anesthesia-general").style.display = "block"
              document.getElementById("anesthesia-loco-general").style.display = "none"
            } else if (element.querySelector("input").id === "labour_anaesthesia_category_anesthésie_locale") {
              document.getElementById("anesthesia-general").style.display = "block"
              document.getElementById("anesthesia-loco-general").style.display = "none"
            }; 
          })
        })
      
    })

    /* If no */
    const inputNoAnesthesia = document.getElementById("labour_anaesthesia_non");

    inputNoAnesthesia.addEventListener("click", (event) => {
      document.getElementById("moment-anesthesia").style.display = "none"
      document.getElementById("category-anesthesia").style.display = "none"
      document.getElementById("anesthia-checkbox").style.display = "none"
      document.getElementById("anesthesia-loco-general").style.display = "none"
      document.getElementById("anesthesia-general").style.display = "none"
    })

  /* Partie 4 du Form "Complications" */

    /* If yes */
    const inputYesComplication = document.getElementById("labour_labour_complication_oui");

    inputYesComplication.addEventListener("click", (event) => {
      document.getElementById("complication-type").style.display = "block"
      document.getElementById("complication-checkbox").style.display = "block"
    })

    /* If no */
    const inputNoComplication = document.getElementById("labour_labour_complication_non");

    inputNoComplication.addEventListener("click", (event) => {
      document.getElementById("complication-checkbox").style.display = "none"
      document.getElementById("complication-type").style.display = "none"
    })

  /* Partie 5 du Form "Actes" */

    /* If yes */
    const inputYesActes = document.getElementById("labour_labour_actes_done_oui");

    inputYesActes.addEventListener("click", (event) => {
      document.getElementById("labour-actes").style.display = "block"
      document.getElementById("delivrance-checkbox").style.display = "block"
    })

    /* If no */
    const inputNoActes = document.getElementById("labour_labour_actes_done_non");

    inputNoActes.addEventListener("click", (event) => {
      document.getElementById("delivrance-checkbox").style.display = "none"
      document.getElementById("labour-actes").style.display = "none"
    })
  
  /* Partie 6 du Form "Informations du bébé" */
  
    /* Monitorage */
    /* If yes */
    const inputYesMonitoring = document.getElementById("labour_babies_attributes_0_monitoring_oui");

    inputYesMonitoring.addEventListener("click", (event) => {
      document.getElementById("monitoring-options").style.display = "block"
      document.getElementById("monitoring-checkbox").style.display = "block"
    })

    /* If no */
    const inputNoMonitoring = document.getElementById("labour_babies_attributes_0_monitoring_non");

    inputNoMonitoring.addEventListener("click", (event) => {
      document.getElementById("monitoring-options").style.display = "none"
      document.getElementById("monitoring-checkbox").style.display = "none"
    })
  
  /* ------------------- */

    /* réanimation */
    /* If yes */
    const inputYesIntensive = document.getElementById("labour_babies_attributes_0_intensivecare_oui");

    inputYesIntensive.addEventListener("click", (event) => {
      document.getElementById("intensivecare-options").style.display = "block"
      document.getElementById("intensivecare-checkbox").style.display = "block"
    })

    /* If no */
    const inputNoIntensive = document.getElementById("labour_babies_attributes_0_intensivecare_non");

    inputNoIntensive.addEventListener("click", (event) => {
      document.getElementById("intensivecare-options").style.display = "none"
      document.getElementById("intensivecare-checkbox").style.display = "none"
    })

    /* ------------------- */

    /* Infections */
    /* If yes */
    const inputYesInfection = document.getElementById("labour_babies_attributes_0_infectiouscontext_oui");

    inputYesInfection.addEventListener("click", (event) => {
      document.getElementById("infections-options").style.display = "block"
      document.getElementById("infections-checkbox").style.display = "block"
    })

    /* If no */
    const inputNoInfection = document.getElementById("labour_babies_attributes_0_infectiouscontext_non");

    inputNoInfection.addEventListener("click", (event) => {
      document.getElementById("infections-options").style.display = "none"
      document.getElementById("infections-checkbox").style.display = "none"
    })

    /* ------------------- */

    /* Malformation */
    
    /* ------------------- */

    /* Pathologies*/

      /* If yes */
    const inputYesPathology = document.getElementById("labour_babies_attributes_0_pathology_oui");

      inputYesPathology.addEventListener("click", (event) => {
        document.getElementById("pathologies-options").style.display = "block"
        document.getElementById("pathologies-checkbox").style.display = "block"
      })

      /* If no */
    const inputNoPathology = document.getElementById("labour_babies_attributes_0_pathology_non");

      inputNoPathology.addEventListener("click", (event) => {
        document.getElementById("pathologies-options").style.display = "none"
        document.getElementById("pathologies-checkbox").style.display = "none"
      })

    /* ------------------- */
  }
}
  
  


export { searchForm }