// const searchautocomplete = () => {
//   const search = document.querySelector("#search_query");
//   search.addEventListener("keyup", (event) => {
//     console.log(event.target.value);
//     // $('.form-control').focus(function() { $(this).search(); });
//     });
//   };
import 'js-autocomplete/auto-complete.css';
import autocomplete from 'js-autocomplete';

const searchautocomplete = function() {
  const patients = JSON.parse(document.getElementById('search-data').dataset.patients)
  const searchInput = document.getElementById('search_query');
  console.log(patients);
  console.log(searchInput);
  if (patients && searchInput) {
    new autocomplete({
      selector: searchInput,
      minChars: 1,
      source: function(term, suggest){
          term = term.toLowerCase();
          const choices = patients;
          const matches = [];
          for (let i = 0; i < choices.length; i++)
              if (~choices[i].toLowerCase().indexOf(term)) matches.push(choices[i]);
          suggest(matches);
      },
    });
  }
};

export { searchautocomplete };
