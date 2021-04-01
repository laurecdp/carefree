import flatpickr from "flatpickr";
import { French } from "flatpickr/dist/l10n/fr.js"

const initFlatpickr = () => {
  flatpickr(".datepicker", {
  inline: true,
  defaultDate: "today",
  dateFormat: "d-m-Y H:i",
  "locale": French,
  });

  flatpickr(".birthdatepicker", {
    defaultDate: "10/05/1990",
    dateFormat: "d-m-Y",
    "locale": French,
  });

  flatpickr(".datetime-picker", {
    altInput: true,
    altFormat: "d F Y  -  H:i",
    ariaDateFormat: "d F Y  -  H:i",
    enableTime: true,
    allowInput: true,
    defaultDate: "today",
    dateFormat: "d-m-Y H:i",
    minuteIncrement: 5,
    "locale": French,
    maxDate: new Date().fp_incr(1) // 1 day from now
  });
}

export { initFlatpickr };
