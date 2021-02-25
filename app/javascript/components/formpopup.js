const popup = () => {
  const naissance = document.getElementById("baby-sidebar");
  const naissance2 = document.getElementById("baby-card");
  [naissance, naissance2].forEach((card) => {
    card.addEventListener("click", (event) => {
      // $("#modal").show();
      console.log(event);
      $('#myModal2').modal('show');
      event.preventDefault();

    });
  })
};

export { popup }
