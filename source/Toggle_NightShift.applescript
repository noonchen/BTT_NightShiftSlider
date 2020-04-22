use framework "CoreBrightness"

property clientOBJ : a reference to current application's CBBlueLightClient's alloc's init

on ns(strength)
	clientOBJ's setStrength:strength commit:true
	clientOBJ's setEnabled:(strength ­ 0)
end ns

set enable to item 2 of item 2 of (clientOBJ's getBlueLightStatus:(specifier)) as boolean

if enable then
	ns(0)
else
	ns(0.5)
end if