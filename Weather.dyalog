 Weather←{
     ⍝ Get Weather and Location data sequentially

     getRequestData←{z←HttpCommand.Get ⍵
         0=z.rc:z.Data}

     host←'https://geographic-services.herokuapp.com'
     nearbyPath←'/places/nearby' ⋄ weatherPath←'/weather'
     (lat lon radius units)←'lat=19.01' 'lon=72.8' 'radius=25' 'unit=km'

     placesNearbyUrl←host,nearbyPath,'?',lat,∊'&',¨lon radius units
     weatherUrl←host,weatherPath,'?',lat,'&',lon

     startTime←SessionTime
     placesNearbyData←getRequestData placesNearbyUrl
     weatherData←getRequestData weatherUrl
     timeTaken←SessionTime-startTime

     weatherAndPlacesNearby←'{ "weather" : ',weatherData,', "placesNearby": ',placesNearbyData,' }"'
     ⎕←'Time Taken: ',(⍕timeTaken),' (ms)'
     ⎕←weatherAndPlacesNearby
 }
