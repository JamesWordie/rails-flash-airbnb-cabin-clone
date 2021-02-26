import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';


const initMapboxShow = () => {
  const mapElement = document.getElementById('map-show');

  const fitMapToMarkers = (map, marker) => {
    const bounds = new mapboxgl.LngLatBounds();
    bounds.extend([ marker.lng, marker.lat ]);
    map.fitBounds(bounds, { padding: 70, maxZoom: 10, duration: 4000 });
  };

  const addMarkersToMap = (map, marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
  };

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map-show',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const marker = JSON.parse(mapElement.dataset.markers);
    new mapboxgl.Marker()
                .setLngLat([ marker.lng, marker.lat ])
                .addTo(map);
    fitMapToMarkers(map, marker);
    addMarkersToMap(map, marker);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                        mapboxgl: mapboxgl }));
  }
};

export { initMapboxShow };

