const searchForm = () => {

  /* Partie 1 du Form "Résumé de l'accouchement */
  if (document.getElementById("msform")) {

    const tagItem = document.querySelectorAll(".tag-item");
     tagItem.forEach(element => {
       element.addEventListener("click", (event) => {

        document.querySelector(".labour-wrap").classList.remove("d-none")

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

    const toggleButtons = document.querySelectorAll(".toggle-yes-no");
      toggleButtons.forEach(element => {
         element.addEventListener("click", (event) => {
           console.log(element.value)
           if (element.value) {
             document.querySelector("#form-step-2-labour-wrap").classList.remove("d-none")
             document.querySelector("#form-step-3-labour-wrap").classList.remove("d-none")
             document.querySelector("#form-step-4-labour-wrap").classList.remove("d-none")
             document.querySelector("#form-step-5-labour-wrap").classList.remove("d-none")
             document.querySelector("#form-step-6-labour-wrap").classList.remove("d-none")
             document.querySelector("#form-step-7-labour-wrap").classList.remove("d-none")
             document.getElementById("moment-anesthesia").style.display = "block";
             document.getElementById("category-anesthesia").style.display = "block"
             document.getElementById("anesthia-checkbox").style.display = "block"
             document.getElementById("complication-type").style.display = "block"
             document.getElementById("complication-checkbox").style.display = "block"
             document.getElementById("labour-actes").style.display = "block"
             document.getElementById("delivrance-checkbox").style.display = "block"
             document.getElementById("monitoring-options").style.display = "block"
             document.getElementById("monitoring-checkbox").style.display = "block"
             document.getElementById("intensivecare-options").style.display = "block"
             document.getElementById("intensivecare-checkbox").style.display = "block"
             document.getElementById("infections-options").style.display = "block"
             document.getElementById("infections-checkbox").style.display = "block"
           } else {
             document.querySelector("#form-step-2-labour-wrap").classList.add("d-none")
             document.getElementById("form-step-3-labour-wrap").classList.add("d-none")
             document.querySelector("#form-step-4-labour-wrap").classList.add("d-none")
             document.querySelector("#form-step-5-labour-wrap").classList.add("d-none")
             document.querySelector("#form-step-6-labour-wrap").classList.add("d-none")
             document.querySelector("#form-step-7-labour-wrap").classList.add("d-none")
             document.getElementById("moment-anesthesia").style.display = "none";
             document.getElementById("category-anesthesia").style.display = "none"
             document.getElementById("anesthia-checkbox").style.display = "none"
             document.getElementById("complication-type").style.display = "none"
             document.getElementById("labour-actes").style.display = "none"
             document.getElementById("complication-checkbox").style.display = "none"
             document.getElementById("delivrance-checkbox").style.display = "none"
             document.getElementById("monitoring-options").style.display = "none"
             document.getElementById("monitoring-checkbox").style.display = "none"
             document.getElementById("intensivecare-checkbox").style.display = "none"
             document.getElementById("intensivecare-options").style.display = "none"
             document.getElementById("infections-options").style.display = "none"
             document.getElementById("infections-checkbox").style.display = "none"
           }
           
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
      });

 
  }
}

export { searchForm }
