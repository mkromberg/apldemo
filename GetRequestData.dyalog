 r←GetRequestData url
 ⍝ Peform HTTP Client Request and return data or error code
 r←#.HttpCommand.Get url
 :If 0=r.rc ⋄ r←r.Data ⋄ :EndIf ⍝ Extract data if all OK
