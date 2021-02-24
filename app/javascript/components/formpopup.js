const popup = () => {
  const naissance = document.getElementById("baby-sidebar");
  naissance.addEventListener("click", (event) => {
    // $("#modal").show();
    $('#modal').modal('show');
    event.preventDefault();
  });
};

export { popup }
