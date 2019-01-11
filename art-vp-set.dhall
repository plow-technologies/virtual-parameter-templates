let VpidSource = {company:Integer, site:Integer, location:Integer, pid:Integer }

in let NeededSources = { yesterdaysVolume:VpidSource,
                         historicFastArrivalsCount:VpidSource,
						 historicGoodArrivalsCount:VpidSource,
						 historicSlowArrivalsCount:VpidSource,
						 historicNoArrivalsCount:VpidSource,
						 historicCyclesCount:VpidSource,
						 currentModeCountdownSec:VpidSource,
						 tubingPressurePSIG:VpidSource,
						 casingPressurePSIG:VpidSource,
						 linePressurePSIG:VpidSource
						 
                         }
				 
in let testSource = { yesterdaysVolume = 172978,
                   historicFastArrivalsCount = 178360,
				   historicGoodArrivalsCount = 178361,
				   historicSlowArrivalsCount = 178362,
				   historicNoArrivalsCount = 178363,
				   historicCyclesCount= 178364,
				   currentModeCountdownSec = 186524,
				   tubingPressurePSIG = 172971,
				   casingPressurePSIG = 172970,
				   linePressurePSIG = 172974} 					 
in \(neededSources:NeededSources) -> [ { vpids =
      [ +3557 ] : List Integer
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
      [ +3780 ] : List Integer
  , vparameterInfo =
      { sources =
          [ { pid = +178360, location = +2110, company = +42, site = +321 }
          , { pid = +178361, location = +2110, company = +42, site = +321 }
          , { pid = +178362, location = +2110, company = +42, site = +321 }
          , { pid = +178363, location = +2110, company = +42, site = +321 }
          , { pid = +178364, location = +2110, company = +42, site = +321 }
          ] : List
              { pid :
                  Integer
              , location :
                  Integer
              , company :
                  Integer
              , site :
                  Integer
              }
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
          [ { pid = +178360, location = +2110, company = +42, site = +321 }
          , { pid = +178361, location = +2110, company = +42, site = +321 }
          , { pid = +178362, location = +2110, company = +42, site = +321 }
          , { pid = +178363, location = +2110, company = +42, site = +321 }
          , { pid = +178364, location = +2110, company = +42, site = +321 }
          ] : List
              { pid :
                  Integer
              , location :
                  Integer
              , company :
                  Integer
              , site :
                  Integer
              }
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
          [ { pid = +178360, location = +2110, company = +42, site = +321 }
          , { pid = +178361, location = +2110, company = +42, site = +321 }
          , { pid = +178362, location = +2110, company = +42, site = +321 }
          , { pid = +178363, location = +2110, company = +42, site = +321 }
          , { pid = +178364, location = +2110, company = +42, site = +321 }
          ] : List
              { pid :
                  Integer
              , location :
                  Integer
              , company :
                  Integer
              , site :
                  Integer
              }
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
          [ { pid = +178360, location = +2110, company = +42, site = +321 }
          , { pid = +178361, location = +2110, company = +42, site = +321 }
          , { pid = +178362, location = +2110, company = +42, site = +321 }
          , { pid = +178363, location = +2110, company = +42, site = +321 }
          , { pid = +178364, location = +2110, company = +42, site = +321 }
          ] : List
              { pid :
                  Integer
              , location :
                  Integer
              , company :
                  Integer
              , site :
                  Integer
              }
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
          [ { pid = +186524, location = +2110, company = +42, site = +321 }
          ] : List
              { pid :
                  Integer
              , location :
                  Integer
              , company :
                  Integer
              , site :
                  Integer
              }
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
          [ { pid = +172971, location = +2110, company = +42, site = +321 }
          ] : List
              { pid :
                  Integer
              , location :
                  Integer
              , company :
                  Integer
              , site :
                  Integer
              }
      , name =
          "Critical Rate"
      , desc =
          "Critical Rate"
      , script =
          +220
      }
  },
  { vpids =
      [ +3550 ] : List Integer
  , vparameterInfo =
      { sources =
          [ { pid = +172970, location = +2110, company = +42, site = +321 }
          , { pid = +172971, location = +2110, company = +42, site = +321 }
          , { pid = +172974, location = +2110, company = +42, site = +321 }
          ] : List
              { pid :
                  Integer
              , location :
                  Integer
              , company :
                  Integer
              , site :
                  Integer
              }
      , name =
          "Load Factor Setting"
      , desc =
          "Load Factor Setting"
      , script =
          +200
      }
  }]:List
    { vpids :
        List Integer
    , vparameterInfo :
        { sources :
            List
            { pid :
                Integer
            , location :
                Integer
            , company :
                Integer
            , site :
                Integer
            }
        , name :
            Text
        , desc :
            Text
        , script :
            Integer
        }
    }
