const searchWindow = () => {

  const sideButton = document.querySelector(".sidebar .action4");
  // const mainButton = document.querySelector(".button-action3");
  const searchButton = document.querySelector(".btn.btn-flat");
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
  }
}

export { searchWindow }
