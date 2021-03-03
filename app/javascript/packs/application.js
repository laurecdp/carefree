// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { sidebar } from '../components/sidebar';
import { popup } from '../components/formpopup';
import { searchWindow } from '../components/search-window';
import {searchForm } from '../components/form_labour';
import { searchautocomplete } from '../components/search-topbar';
import { searchbirthautocomplete } from '../components/search-bar-window-right';
import { filterpatients } from '../components/filter-patients';
import { initSelect2 } from '../components/select2';
import { initFlatpickr } from "../plugins/flatpickr";
import { slide } from "../components/form_slide";
import { updateTextInput } from "../components/range_bubble";

document.addEventListener('turbolinks:before-cache', () => {
  document.querySelector('.flatpickr-calendar').outerHTML = '';
})

document.addEventListener('turbolinks:load', () => {
  initFlatpickr();
  // Call your functions here, e.g:
  // sidebar();
  popup();
  initSelect2();
  searchWindow();
  // initFlatpickr();
  searchForm();
  searchautocomplete();
  searchbirthautocomplete();
  filterpatients();
  slide();
  updateTextInput();
});






