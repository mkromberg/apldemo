 GetPrice←{
     ⍝ Retrieve price for a stock code
     url←'http://national-stock-service.herokuapp.com/stocks/',⍵ ⍝ Add stock code to produce complete URL
     z←#.HttpCommand.Get url                                     ⍝ HTTP Client Request
     0≠z.rc:('unable to get price for ',⍵,': ',⍕rc)⎕SIGNAL 11    ⍝ Throw failures back
     (⎕JSON z.Data).price                                        ⍝ Convert JSON to APL object and extract price
 }
