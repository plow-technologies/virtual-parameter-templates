let concatMap = https://raw.githubusercontent.com/dhall-lang/Prelude/35deff0d41f2bf86c42089c6ca16665537f54d75/List/concatMap
in
let map = https://raw.githubusercontent.com/dhall-lang/dhall-lang/0a7f596d03b3ea760a96a8e03935f4baa64274e1/Prelude/List/map
in
let sourceFunction = ./BuildNeededSourcesFunction.dhall
in
let UnrolledSource = ./UnrolledSource.dhall
in
let NeededSources = ./NeededSources.dhall
in
let VirtualParameter =  ./VirtualParameter.dhall
in
let testSource                = {
    companyId                 = +42,
	siteId                    = +321,
	locationId                = +2110,
	locationName              = "Desert Spring State 034-36-09-18",
	scadaDataLocationId       = +3487,
	yesterdaysVolume          = +172978,
	historicFastArrivalsCount = +178360,
	historicGoodArrivalsCount = +178361,
	historicSlowArrivalsCount = +178362,
	historicNoArrivalsCount   = +178363,
	historicCyclesCount       = +178364,
	currentModeCountdownSec   = +186524,
	tubingPressurePSIG        = +172971,
	casingPressurePSIG        = +172970,
	linePressurePSIG          = +172974,
	plungerArrivalOneTimeSec  = +172964,
	wellDepth                 = +351002} : UnrolledSource
in
let sources = [testSource,testSource]
in concatMap UnrolledSource VirtualParameter sourceFunction sources



