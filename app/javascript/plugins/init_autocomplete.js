import places from 'places.js';

const initAutocomplete = () => {
  console.log('coucou');
  const locationInput = document.getElementById('place_location');
  if (locationInput) {
    places({ container: locationInput });
  }
};

export { initAutocomplete };
