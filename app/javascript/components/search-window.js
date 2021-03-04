const searchWindow = () => {

  const sideButton = document.querySelector(".sidebar .action4");
  const closeButton = document.getElementById("close");
  const searchWindow = document.querySelector(".search-window");

  if (searchWindow) {
    sideButton.addEventListener("click", (event) => {
      const categoryId = sideButton.querySelector('a').dataset.category;
      event.preventDefault();
      history.pushState({}, null, window.location.origin + '/dashboard' + `?category=${categoryId}`);
      document.querySelector(".container-dashboard").classList.add("grey-box");
      document.querySelector(".action4").classList.add("sidebar-active");
      document.querySelectorAll('.cards-window').forEach((card) => {
        if (!card.querySelector('a').href.includes(`?category=${categoryId}`)) {
          card.querySelector('a').href += `?category=${categoryId}`
        }
      })
      searchWindow.classList.add("appear");
    });
    closeButton.addEventListener("click", (event) => {
      searchWindow.classList.remove("appear");
    });
  }
}

export { searchWindow }
