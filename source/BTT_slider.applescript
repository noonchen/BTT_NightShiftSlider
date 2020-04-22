use framework "CoreBrightness"

on bttWidgetSliderMoved(sliderValue)

	set clientOBJ to current application's CBBlueLightClient's alloc's init
	clientOBJ's setStrength:sliderValue commit:true

	clientOBJ's setEnabled:(sliderValue ­ 0)
	
end bttWidgetSliderMoved