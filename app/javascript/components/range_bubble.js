/* const updateTextInput = () => {

  const inputWeight = document.getElementById('labour_baby_weight');
  if (inputWeight) {
    inputWeight.addEventListener("click", (event) => {
      const innerValue = inputWeight.value
      if (document.getElementById("weightrangeInput")) {
        const textInputWeight = document.getElementById("weightrangeInput")
        textInputWeight.value = `${innerValue} kg`

      } else {
        inputWeight.parentElement.insertAdjacentHTML('beforeend', `<input type="text" id="weightrangeInput" value="${innerValue} kg"></input>`)
        const textInputWeight = document.getElementById("weightrangeInput")
        textInputWeight.innerHTML = innerValue
      }
    })
  }

  const inputHeight = document.getElementById('labour_baby_heigh');
  if (inputHeight) {
    inputHeight.addEventListener("click", (event) => {
      const innerValue = inputHeight.value
      if (document.getElementById("heightrangeInput")) {
        const textinputHeight = document.getElementById("heightrangeInput")
        textinputHeight.value = `${innerValue} cm`

      } else {
        inputHeight.parentElement.insertAdjacentHTML('beforeend', `<input type="text" id="heightrangeInput" value="${innerValue} cm"></input>`)
        const textinputHeight = document.getElementById("heightrangeInput")
        textinputHeight.innerHTML = innerValue
      }
    })
  }


  const inputHead = document.getElementById('labour_baby_head_circumference');
  if (inputHead) {
    inputHead.addEventListener("click", (event) => {
      const innerValue = inputHead.value
      if (document.getElementById("headrangeInput")) {
        const textinputHead = document.getElementById("headrangeInput")
        textinputHead.value = `${innerValue} cm`

      } else {
      inputHead.parentElement.insertAdjacentHTML('beforeend', `<input type="text" id="headrangeInput" value="${innerValue} cm"></input>`)
        const textinputHead = document.getElementById("headrangeInput")
        textinputHead.innerHTML = innerValue
      }
    })
  }

}

export { updateTextInput }; */
