 WeatherParallel←{

     ⍝ Get Weather and Location data using APL "pseudo-threading"
     ⍝ => Launch threads using "spawn" operator & (returns Thread IDs)
     ⍝ => Collect results using ⎕TSYNC (thread synchronization)

     getRequestData←{z←HttpCommand.Get ⍵
         0=z.rc:z.Data}

     host←'https://geographic-services.herokuapp.com'
     nearbyPath←'/places/nearby' ⋄ weatherPath←'/weather'
     (lat lon radius units)←'lat=19.01' 'lon=72.8' 'radius=25' 'unit=km'

     placesNearbyUrl←host,nearbyPath,'?',lat,∊'&',¨lon radius units
     weatherUrl←host,weatherPath,'?',lat,'&',lon

     startTime←SessionTime
     (placesNearbyData weatherData)←⎕TSYNC getRequestData&¨placesNearbyUrl weatherUrl
     timeTaken←SessionTime-startTime

     weatherAndPlacesNearby←'{ "weather" : ',weatherData,', "placesNearby": ',placesNearbyData,' }"'
     ⎕←'Time Taken: ',(⍕timeTaken),' (ms)'
     ⎕←weatherAndPlacesNearby
 }
