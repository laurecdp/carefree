// Step by step to implement a dynamic search please DO NOT DELETE THIS COMMENT
// 1. Refer to the modal in shared > _list-of-patients.html.erb
  // the code for the modal is a loop to display name and birth date of the patient searched
// 2. Add <%= render 'shared/list-of-patients' %> to dashboard.html.erb in a specific div with class list-of-patients
// 3. Create the file filter-patient.js in Javascript > components
  // a. in filter-patient.js create a function filterpatients
  // b. select the form with the right query selector (it's const form below)
  // c. select the input from the form (it's const input below)
  // d. listen the submit
  // e. add a prevent default because we want to keep the window open
// 4. create a function to fetch your data (refer to the function displayFilteredPatients)
// 5. go to pages controller and add those lines to the dashboard method:
  // respond_to do |format|
  // format.html
  // format.json {render json: { html: render_to_string(partial: "shared/list-of-patients", formats: :html) }}

const displayFilteredPatients = (input) => {

  const url = `/dashboard?search[query]=${input.value}`;
  fetch(url, { headers: { accept: "application/json" } })
  .then(response => response.json())
  .then((data) => {
    const result = document.querySelector("#list-of-patients");
    result.innerHTML = data.html;
  });
}

const filterpatients = () => {
  const form = document.querySelector(".search-patient-form");
  const input = form.querySelector("#search_right_query");
  form.addEventListener('submit', (event) => {
    event.preventDefault();
    displayFilteredPatients(input);
  });
  input.addEventListener('keyup', (event) => {
    displayFilteredPatients(input);
  })
}

export { filterpatients }
