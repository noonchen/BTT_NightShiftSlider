use framework "CoreBrightness"

on textColor(CCT_parameter)
	set {r_c, g_c, b_c} to {0, 162, 214} --blue
	set {r_w, g_w, b_w} to {227, 134, 17} --orange
	
	set cct_w to item 1 of CCT_parameter
	set CCT to item 2 of CCT_parameter
	set cct_c to item 3 of CCT_parameter
	
	set ratio to (CCT - cct_w) / (cct_c - cct_w)
	set {r, g, b} to {r_w + ratio * (r_c - r_w), g_w + ratio * (g_c - g_w), b_w + ratio * (b_c - b_w)}
	
	return (r as text) & "," & (g as text) & "," & (b as text) & "," & "255"
end textColor

property clientOBJ : a reference to current application's CBBlueLightClient's alloc's init

set CCT to (item 2 of (clientOBJ's getCCT:(reference)))
set t_color to textColor([2700, CCT, 6000]) --use default CCT range
set CCT to (CCT as string) & " K"

return "{\"text\":\"" & CCT & "\", \"font_color\": \"" & t_color & "\"}"