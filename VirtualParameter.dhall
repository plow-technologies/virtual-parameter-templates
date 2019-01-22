let VpidSource = ./VpidSource.dhall
in
let VirtualParameterInfo = { sources : (List VpidSource)
                     , name :Text
					 , desc :Text
					 , script :Integer}
in  {  vpids: List Integer
    ,  vparameterInfo : VirtualParameterInfo} 
