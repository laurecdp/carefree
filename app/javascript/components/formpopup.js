const popup = () => {
  const naissance = document.getElementById("baby-sidebar");
  const naissance2 = document.getElementById("baby-card");
  [naissance, naissance2].forEach((card) => {
    if (card) {
      card.addEventListener("click", (event) => {
        // $("#modal").show();
        $('#modal').modal('show');
        event.preventDefault();
      });
    }
  })
};

export { popup }
