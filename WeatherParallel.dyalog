 WeatherParallel←{
     ⍝ Retrieve weather and location data in parallel using futures

     host←'https://geographic-services.herokuapp.com'
     nearbyPath←'/places/nearby' ⋄ weatherPath←'/weather'
     (lat lon radius units)←'lat=19.01' 'lon=72.8' 'radius=25' 'unit=km'

     placesNearbyUrl←host,nearbyPath,'?',lat,∊'&',¨lon radius units
     weatherUrl←host,weatherPath,'?',lat,'&',lon

     placesNearbyData←GetRequestData II placesNearbyUrl ⍝ II is model of ∥
     weatherData←GetRequestData II weatherUrl           ⍝ placesNearbyData and weatherData are futures
     '{ "weather" : ',weatherData,', "placesNearby": ',placesNearbyData,' }"' ⍝ Blocks if futures are not complete

 }
