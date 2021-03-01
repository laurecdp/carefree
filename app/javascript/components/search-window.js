const searchWindow = () => {

  const sideButton = document.querySelector(".sidebar .action4");
  const closeButton = document.getElementById("close");
  const searchWindow = document.querySelector(".search-window");

  if (searchWindow) {
    sideButton.addEventListener("click", (event) => {
      searchWindow.classList.add("appear");
    });
    closeButton.addEventListener("click", (event) => {
      searchWindow.classList.remove("appear");
    });
  }
}

export { searchWindow }
