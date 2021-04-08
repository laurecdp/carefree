const searchForm = () => {

  /* Display or hide form's parts */
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

    /* Manage the interactions with the toggle buttons */
    const toggleButtons = document.querySelectorAll(".toggle-yes-no");
    toggleButtons.forEach(element => {
      element.addEventListener("click", (event) => {
          document.querySelector(`#${element.dataset.id}`).classList.toggle("d-none") 
      })
    })
    
    const anesthesiaLoco = document.getElementById("labour_anaesthesia_category_anesthésie_loco-régionale")
    anesthesiaLoco.addEventListener("click", (event) => {
      document.getElementById("anesthesia-loco-general").classList.remove("d-none")
      document.getElementById("anesthesia-general").classList.add("d-none")
    })

    const anesthesiaGeneral = document.getElementById("labour_anaesthesia_category_anesthésie_générale")
    anesthesiaGeneral.addEventListener("click", (event) => {
      document.getElementById("anesthesia-general").classList.remove("d-none")
      document.getElementById("anesthesia-loco-general").classList.add("d-none")
    })

  }
}

export { searchForm }
