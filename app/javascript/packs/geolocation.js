const x = document.getElementById("location");
const latitude = document.getElementById("Latitude");
const longitude = document.getElementById("Longitude");
const address = document.getElementById("address");


function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else {
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
}


function showPosition(position) {
  latitude.value = position.coords.latitude
  longitude.value = position.coords.longitude
  fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${position.coords.longitude},${position.coords.latitude}.json?access_token=pk.eyJ1Ijoib2Rwb2xvIiwiYSI6ImNqdGg2Znd1YzBibmc0M3AyMGpsY3hpZjYifQ.U0j8X1KdXoWdUzdeONfeIQ`)
  .then(res => res.json())
  .then(json => {
    const place = json.features[0].place_name
    console.log(json)
    x.innerHTML = place;
    address.value = place;
  })
}


x.addEventListener('click', getLocation)
