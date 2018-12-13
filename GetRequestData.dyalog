 r←GetRequestData url
 r←#.HttpCommand.Get url
 :If 0=r.rc ⋄ r←r.Data ⋄ :EndIf
