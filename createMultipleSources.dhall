let concatMap = https://raw.githubusercontent.com/dhall-lang/Prelude/35deff0d41f2bf86c42089c6ca16665537f54d75/List/concatMap
in
let map = https://raw.githubusercontent.com/dhall-lang/dhall-lang/0a7f596d03b3ea760a96a8e03935f4baa64274e1/Prelude/List/map
in
let sourceFunction = https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/BuildNeededSourcesFunction.dhall
in
let UnrolledSource = https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/UnrolledSource.dhall
in
let NeededSources = https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/NeededSources.dhall
in
let VirtualParameter =  https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/VirtualParameter.dhall
in let sources = [
	{
    companyId                 = +42,
	siteId                    = +294,
	locationId                = +2067,
	locationName              = "Federal 011-21-09-19",
	scadaDataLocationId       = +3023,
	yesterdaysVolume          = +170062,
	historicFastArrivalsCount = +178613,
	historicGoodArrivalsCount = +178614,
	historicSlowArrivalsCount = +178615,
	historicNoArrivalsCount   = +178616,
	historicCyclesCount       = +178617,
	currentModeCountdownSec   = +186520,
	tubingPressurePSIG        = +170055,
	casingPressurePSIG        = +170054,
	linePressurePSIG          = +170058,
	plungerArrivalOneTimeSec  = +170048,
	wellDepth                 = +351384},
	{
    companyId                 = +42,
	siteId                    = +304,
	locationId                = +2083,
	locationName              = "Federal 011-22-09-19",
	scadaDataLocationId       = +3023,
	yesterdaysVolume          = +171751,
	historicFastArrivalsCount = +186445,
	historicGoodArrivalsCount = +186446,
	historicSlowArrivalsCount = +186447,
	historicNoArrivalsCount   = +186448,
	historicCyclesCount       = +186449,
	currentModeCountdownSec   = +186688,
	tubingPressurePSIG        = +171744,
	casingPressurePSIG        = +171743,
	linePressurePSIG          = +171747,
	plungerArrivalOneTimeSec  = +171737,
	wellDepth                 = +351384},
	{
    companyId                 = +42,
	siteId                    = +331,
	locationId                = +2199,
	locationName              = "Federal 012-19-09-19",
	scadaDataLocationId       = +3023,
	yesterdaysVolume          = +174189,
	historicFastArrivalsCount = +186490,
	historicGoodArrivalsCount = +186491,
	historicSlowArrivalsCount = +186492,
	historicNoArrivalsCount   = +186493,
	historicCyclesCount       = +186494,
	currentModeCountdownSec   = +186504,
	tubingPressurePSIG        = +174182,
	casingPressurePSIG        = +174181,
	linePressurePSIG          = +174185,
	plungerArrivalOneTimeSec  = +174175,
	wellDepth                 = +351384},
	{
    companyId                 = +42,
	siteId                    = +509,
	locationId                = +2753,
	locationName              = "Federal 012-20-09-19",
	scadaDataLocationId       = +3023,
	yesterdaysVolume          = +331577,
	historicFastArrivalsCount = +331531,
	historicGoodArrivalsCount = +331532,
	historicSlowArrivalsCount = +331533,
	historicNoArrivalsCount   = +331534,
	historicCyclesCount       = +331535,
	currentModeCountdownSec   = +331549,
	tubingPressurePSIG        = +331570,
	casingPressurePSIG        = +331569,
	linePressurePSIG          = +331573,
	plungerArrivalOneTimeSec  = +331550,
	wellDepth                 = +351384},
	{
    companyId                 = +42,
	siteId                    = +555,
	locationId                = +2861,
	locationName              = "Federal 012-29-09-19",
	scadaDataLocationId       = +3023,
	yesterdaysVolume          = +335941,
	historicFastArrivalsCount = +335895,
	historicGoodArrivalsCount = +335896,
	historicSlowArrivalsCount = +335897,
	historicNoArrivalsCount   = +335898,
	historicCyclesCount       = +335899,
	currentModeCountdownSec   = +335913,
	tubingPressurePSIG        = +335934,
	casingPressurePSIG        = +335933,
	linePressurePSIG          = +335937,
	plungerArrivalOneTimeSec  = +335914,
	wellDepth                 = +351384} 
] : List UnrolledSource	
in concatMap UnrolledSource VirtualParameter sourceFunction sources
