const searchWindow = () => {

  const sideButton = document.querySelector(".sidebar .action4");
  const closeButton = document.getElementById("close");
  const searchWindow = document.querySelector(".search-window");

  if (searchWindow) {
    sideButton.addEventListener("click", (event) => {
      event.preventDefault();
      history.pushState({}, null, window.location.origin + '/dashboard' + '?category=4');
      document.querySelector(".container-dashboard").classList.add("grey-box");
      document.querySelector(".action4").classList.add("sidebar-active");
      document.querySelectorAll('.cards-window').forEach((card) => {
        if (!card.querySelector('a').href.includes('?category=4')) {
          card.querySelector('a').href += '?category=4'
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
