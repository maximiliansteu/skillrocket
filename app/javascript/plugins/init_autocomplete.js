import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelector('.maxi-form-control-home-location');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
