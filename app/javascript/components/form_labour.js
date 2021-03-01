const searchForm = () => {
 
  /*Partie 1 du Form "Résumé de l'accouchement */
  if (document.getElementById("new_labour")) {

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
    
    /*Partie 2 du Form "Anésthésie*/
    const inputYesRadioButtons = document.getElementById("labour_anaesthesia_oui");

    inputYesRadioButtons.addEventListener("click", (event) => {
      document.getElementById("moment-anesthesia").style.display = "block"
      document.getElementById("category-anesthesia").style.display = "block"
      document.getElementById("anesthia-checkbox").style.display = "block"
      
    })
    
    const inputNoRadioButtons = document.getElementById("labour_anaesthesia_non");

    inputNoRadioButtons.addEventListener("click", (event) => {
      document.getElementById("moment-anesthesia").style.display = "none"
      document.getElementById("category-anesthesia").style.display = "none"
      document.getElementById("anesthia-checkbox").style.display = "none"
    })

  }
}
  
  


export { searchForm }