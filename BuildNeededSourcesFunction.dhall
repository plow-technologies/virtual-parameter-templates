let VpidSource = ./VpidSource.dhall

in let NeededSources = ./NeededSources.dhall
in let VirtualParameter = ./VirtualParameter.dhall
					 
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
      [ +3785 ] : List Integer
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
      [ +3789 ] : List Integer
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
      [ +3794 ] : List Integer
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
      [ +3544 ] : List Integer
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
      [ +3686 ] : List Integer
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
      [ +2427 ] : List Integer
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

in let UnrolledSource = ./UnrolledSource.dhall
				   
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
	   
in let testSource = {
       companyId = +42,
	   siteId = +321,
	   locationId = +2110,
	   locationName = "Desert Spring State 034-36-09-18",
	   scadaDataLocationId = +3487,
	   yesterdaysVolume = +172978,
	   historicFastArrivalsCount = +178360,
	   historicGoodArrivalsCount = +178361,
	   historicSlowArrivalsCount = +178362,
	   historicNoArrivalsCount = +178363,
	   historicCyclesCount= +178364,
	   currentModeCountdownSec = +186524,
	   tubingPressurePSIG = +172971,
	   casingPressurePSIG = +172970,
	   linePressurePSIG = +172974,
	   plungerArrivalOneTimeSec = +172964,
	   wellDepth = +351002} 
in \(unrolled:UnrolledSource) -> buildWapitiSet (buildNeededSources  unrolled)
