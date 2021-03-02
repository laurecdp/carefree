import 'js-autocomplete/auto-complete.css';
import autocomplete from 'js-autocomplete';

const searchbirthautocomplete = function() {
  const searchRight = document.querySelector('.search-right');
  if (searchRight) {
    const patientsright = JSON.parse(searchRight.dataset.patients)
    const searchInputright = document.getElementById('search_right_query')
    if (patientsright && searchInputright) {
      new autocomplete({
        selector: searchInputright,
        minChars: 1,
        source: function (term, suggest) {
          term = term.toLowerCase();
          const choices = patientsright;
          const matches = [];
          for (let i = 0; i < choices.length; i++)
            if (~choices[i].toLowerCase().indexOf(term)) matches.push(choices[i]);
          suggest(matches);
        },
      });
  }
  }
};

export { searchbirthautocomplete };

