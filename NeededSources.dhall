let VpidSource = ./VpidSource.dhall
in { yesterdaysVolume:VpidSource,
    historicFastArrivalsCount:VpidSource,
	historicGoodArrivalsCount:VpidSource,
	historicSlowArrivalsCount:VpidSource,
	historicNoArrivalsCount:VpidSource,
	historicCyclesCount:VpidSource,
	currentModeCountdownSec:VpidSource,
	tubingPressurePSIG:VpidSource,
	casingPressurePSIG:VpidSource,
	linePressurePSIG:VpidSource,
	plungerArrivalOneTimeSec:VpidSource,
	locationName:Text,
	wellDepth: VpidSource}
