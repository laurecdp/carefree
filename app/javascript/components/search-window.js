const searchWindow = () => {
  const naissanceBtn1 = document.querySelector(".sidebar .action4");
  const naissanceBtn2 = document.querySelector(".button-action3");
  const searchButton = document.querySelector(".search-form-control .btn");
  const searchWindow = document.querySelector(".search-window");
  if (searchWindow) {
    naissanceBtn1.addEventListener("click", (event) => {
      searchWindow.classList.toggle("appear");
    });
    searchButton.addEventListener("click", (event) => {
      searchWindow.classList.toggle("appear");
    });
    naissanceBtn2.addEventListener("click", (event) => {
      searchWindow.classList.toggle("appear");
    });
  }
}

export { searchWindow }
