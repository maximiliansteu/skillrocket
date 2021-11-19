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

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  statusColor();
  initAutocomplete();
})

const statusColor = () => {
  const status = document.querySelectorAll(".status");
  if (status.innerText == "Pending") {
    status.style.color = 'orange'
  } else if (status.innerText == "Canceled") {
    status.style.color = 'red'
  } else if (status.innerText == "Confirmed"){
    status.style.color = 'green'
  }
}

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
const priceCalculation = document.querySelector(".calculate-price");
priceCalculation.addEventListener("click", (event) => {
  event.preventDefault();
  const startTime = new Date(document.getElementById("booking_start_date").value);
  const endTime = new Date(document.getElementById("booking_end_date").value);
  const coursePrice = document.getElementById("course-price").innerText
  const priceInt = parseInt(coursePrice, 10);
  const milliseconds = endTime - startTime;
  const days = (milliseconds/(60 * 60 * 24 * 1000));
  const result = days * coursePrice;
  document.querySelector(".total-price").style.marginLeft = "15px";
  document.querySelector(".total-days").innerHTML = `${days}<span> Days for:</span >`;
  document.querySelector(".total-price").innerHTML = `${result}<span>€</span >`;
});


  // let endTime = document.getElementById(parseInt("end-date", 10));
  // let coursePrice = document.getElementById("course-price");
  // let calculation = (startTime - endTime) * coursePrice;
  // return calculation;
