const searchForm = () => {
 
  if (document.getElementById("new_labour")) {
    const tagItem = document.querySelectorAll(".tag-item");
     tagItem.forEach(element => {
       element.addEventListener("click", (event) => {
         if (element.querySelector("input").id === "labour_labour_start_travail_spontané") {
          console.log("travail spontané")
         } else if (element.querySelector("input").id === "labour_labour_start_déclenchement_artificiel") {

         } else if (element.querySelector("input").id === "labour_labour_start_césarienne_avant_travail") {
           
         }
    
       });
     });
  }


 
}

export { searchForm }