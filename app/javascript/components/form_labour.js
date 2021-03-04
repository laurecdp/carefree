const searchForm = () => {

  /* Partie 1 du Form "Résumé de l'accouchement */
  if (document.getElementById("msform")) {

    const tagItem = document.querySelectorAll(".tag-item");
     tagItem.forEach(element => {
       element.addEventListener("click", (event) => {
       document.querySelector(".labour-wrap").classList.remove("d-none")

        if (element.querySelector("input").id === "labour_labour_start_travail_spontané") {
           document.querySelector("#form-step-0-labour-wrap").classList.remove("d-none")
           document.querySelector("#form-step-1-labour-wrap").classList.add("d-none")
        } else {
           document.querySelector("#form-step-1-labour-wrap").classList.remove("d-none")
           document.querySelector("#form-step-0-labour-wrap").classList.add("d-none")
        }
      });
    });

    const anesthesiaItem = document.querySelectorAll(".tag-item");
    anesthesiaItem.forEach(element => {
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


    const toggleButtons = document.querySelectorAll(".toggle-yes-no");
    toggleButtons.forEach(element => {
      element.addEventListener("click", (event) => {
        if (element.value) {
          document.querySelector("#form-step-2-labour-wrap").classList.toggle("d-none")
            document.querySelector(".category-anesthesia").classList.toggle("show")
            document.querySelector(`#${element.dataset.id}`).classList.toggle("d-none")
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
