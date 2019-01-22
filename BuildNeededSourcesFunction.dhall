let VpidSource = https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/VpidSource.dhall

in let NeededSources = https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/NeededSources.dhall
in let VirtualParameter = https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/VirtualParameter.dhall
					 
in let buildWapitiSet = \(neededSources:NeededSources) -> [ { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.yesterdaysVolume
          ] : List VpidSource
              
      , name =
          "Percent of Target"
      , desc =
          "Percent of Target"
      , script =
          +203
      }
  },
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
              
      , name =
          "Yesterday Arrivals"
      , desc =
          "Yesterday Arrivals"
      , script =
          +196
      }
  },
{ vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
      , name =
          "Yest No Arr Script"
      , desc =
          "Yest No Arr Script"
      , script =
          +165
      }
  },
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
	      [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
          
      , name =
          "Today Arrivals"
      , desc =
          "Today Arrivals"
      , script =
          +139
      }
  },
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
      , name =
          "Today Fails"
      , desc =
          "Today Fails"
      , script =
          +140
      }
  },
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.currentModeCountdownSec
          ] : List VpidSource
              
      , name =
          "Current Timer Countdown H.MM"
      , desc =
          "Current Timer Countdown H.MM"
      , script =
          +199
      }
  },
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.tubingPressurePSIG
          ] : List VpidSource
              
      , name =
          "Critical Rate"
      , desc =
          "Critical Rate"
      , script =
          +220
      }
  },
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.casingPressurePSIG 
          , neededSources.tubingPressurePSIG 
          , neededSources.linePressurePSIG 
          ] : List VpidSource
              
      , name =
          "Load Factor Setting"
      , desc =
          "Load Factor Setting"
      , script =
          +200
      }
  },
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.yesterdaysVolume
          ] : List VpidSource
              
      , name =
          "90 Day Max Yest Vol - Rate Overlay"
      , desc =
          "90 Day Max Yest Vol - Rate Overlay"
      , script =
          +219
      }
  },
  
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.plungerArrivalOneTimeSec
		  , neededSources.wellDepth
          ] : List VpidSource
              
      , name =
          "pv1 " ++ neededSources.locationName
      , desc =
          "pv1 " ++ neededSources.locationName
      , script =
          +143
      }
  }]:List VirtualParameter

in let UnrolledSource = https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/UnrolledSource.dhall
				   
in let buildNeededSources = \(unrolled:UnrolledSource) -> let
  buildVpid = \(p:Integer) -> { company = unrolled.companyId,
                                site    = unrolled.siteId,
					            location = unrolled.locationId,
					            pid = p}: VpidSource
								
  in { yesterdaysVolume          = buildVpid unrolled.yesterdaysVolume ,
       historicFastArrivalsCount = buildVpid unrolled.historicFastArrivalsCount,
	   historicGoodArrivalsCount = buildVpid unrolled.historicGoodArrivalsCount,
	   historicSlowArrivalsCount = buildVpid unrolled.historicSlowArrivalsCount,
	   historicNoArrivalsCount   = buildVpid unrolled.historicNoArrivalsCount ,
	   historicCyclesCount       = buildVpid unrolled.historicCyclesCount,
	   currentModeCountdownSec   = buildVpid unrolled.currentModeCountdownSec,
	   tubingPressurePSIG        = buildVpid unrolled.tubingPressurePSIG,
	   casingPressurePSIG        = buildVpid unrolled.casingPressurePSIG,
	   linePressurePSIG          = buildVpid unrolled.linePressurePSIG,
	   plungerArrivalOneTimeSec  = buildVpid unrolled.plungerArrivalOneTimeSec,
	   locationName              = unrolled.locationName,
	   wellDepth                 = (buildVpid unrolled.wellDepth) //{location = unrolled.scadaDataLocationId }
	   }: NeededSources
	   

in \(unrolled:UnrolledSource) -> buildWapitiSet (buildNeededSources  unrolled)
