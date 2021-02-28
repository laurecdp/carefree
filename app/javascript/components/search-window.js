const searchWindow = () => {

  const sideButton = document.querySelector(".sidebar .action4");
  // const mainButton = document.querySelector(".button-action3");
  const searchButton = document.querySelector(".btn.btn-flat");
  const closeButton = document.getElementById("close");
  const searchWindow = document.querySelector(".search-window");
  if (searchWindow) {
    sideButton.addEventListener("click", (event) => {
      searchWindow.classList.toggle("appear");
    });
    searchButton.addEventListener("click", (event) => {
      searchWindow.classList.add("appear");
    });
    // mainButton.addEventListener("click", (event) => {
    //   searchWindow.classList.toggle("appear");
    // });
    // closeButton.addEventListener("click", (event) => {
    //   searchWindow.classList.remove("search-window");
    // });
  }
}

export { searchWindow }
