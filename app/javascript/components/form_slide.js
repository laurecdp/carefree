const slide = () => {
  const formStep = document.querySelectorAll(".form_step");
  formStep.forEach(step => {
    const next = step.querySelector(".next");
    next.addEventListener("click", (event) => {
      event.preventDefault();
      const nextStep = document.querySelector(`[data-step="${parseInt(step.dataset.step) + 1}"]`);
      nextStep.classList.add("active");
      step.classList.remove("active");

      const progressbar = document.querySelector(`[data-bar="${parseInt(step.dataset.step) + 1}"]`);
      progressbar.classList.add("present");

    })
    const previous = step.querySelector(".previous");
    if (previous) {
      previous.addEventListener("click", (event) => {
      const progressbar = document.querySelector(`[data-bar="${parseInt(step.dataset.step)}"]`);
      progressbar.classList.remove("present");

      const previousStep = document.querySelector(`[data-step="${parseInt(step.dataset.step) - 1}"]`);
      previousStep.classList.add("active");
      step.classList.remove("active");
      })
    }
  });
}

export {slide}
