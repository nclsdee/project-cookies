console.log("Hello from autocomplete")

function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    let userAddress = document.getElementById('query');


    if (userAddress) {
      let autocomplete = new google.maps.places.Autocomplete(userAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(userAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          // e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
