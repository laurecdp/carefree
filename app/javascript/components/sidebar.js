const sidebar = () => {
  const button = document.querySelector(".sidebar .button");
  const sideButton = document.querySelector(".sidebar > ul");
  const sidebar = document.querySelector(".sidebar");
  if (sidebar) {
    button.addEventListener("click", (event) => {
      sidebar.classList.toggle("hidden");
    });
    // sideButton.addEventListener("mouseover", (event) => {
    //   sidebar.classList.add("");
    // });

  }
}

export { sidebar }
