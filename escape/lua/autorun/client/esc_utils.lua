
tc_white = Color(255, 255, 255)
tc_bwhite = Color(230, 230, 230)

function pm.iconbe( x, y, w, h, color, mate )
	surface.SetDrawColor( color )
	surface.SetMaterial( Material(mate) )
	surface.DrawTexturedRect( x, y, w, h )
end