const searchForm = () => {
 
  if (document.getElementById("new_labour")) {
    const tagItem = document.querySelectorAll(".tag-item");
     tagItem.forEach(element => {
       element.addEventListener("click", (event) => {

         if (element.querySelector("input").id === "labour_labour_start_travail_spontané") {
          document.getElementById("travail-spontane-checkbox").style.display = "block"
           document.getElementById("cesarienne-checkbox").style.display = "none"
           document.getElementById("artificial-labour").style.display = "none"
          
         } else if (element.querySelector("input").id === "labour_labour_start_déclenchement_artificiel") {
           document.getElementById("travail-spontane-checkbox").style.display = "block"
           document.getElementById("cesarienne-checkbox").style.display = "none"
           document.getElementById("artificial-labour").style.display = "block"

         } else if (element.querySelector("input").id === "labour_labour_start_césarienne_avant_travail") {
           document.getElementById("cesarienne-checkbox").style.display = "block"
           document.getElementById("travail-spontane-checkbox").style.display = "none"
           document.getElementById("artificial-labour").style.display = "block"
         }
    
       });
     });
  }
 
}

export { searchForm }