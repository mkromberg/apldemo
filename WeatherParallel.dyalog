 WeatherParallel←{

     host←'https://geographic-services.herokuapp.com'
     nearbyPath←'/places/nearby' ⋄ weatherPath←'/weather'
     (lat lon radius units)←'lat=19.01' 'lon=72.8' 'radius=25' 'unit=km'

     placesNearbyUrl←host,nearbyPath,'?',lat,∊'&',¨lon radius units
     weatherUrl←host,weatherPath,'?',lat,'&',lon

     placesNearbyData←GetRequestData II placesNearbyUrl ⍝ II is model of ∥
     weatherData←GetRequestData II weatherUrl
     '{ "weather" : ',weatherData,', "placesNearby": ',placesNearbyData,' }"'

 }
