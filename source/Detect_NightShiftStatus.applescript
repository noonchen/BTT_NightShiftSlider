use framework "CoreBrightness"

property clientOBJ : a reference to current application's CBBlueLightClient's alloc's init

return item 2 of item 2 of (clientOBJ's getBlueLightStatus:(reference)) as boolean
