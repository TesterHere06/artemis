if (state == paused) {
	draw_surface(surface, 0, 0)
}
if !global.IsGamepad {
	draw_sprite(spr_cursor, 0, mouse_x-x, mouse_y-y)
} else {
	var hor = gamepad_axis_value(0, gp_axisrh)
	var ver = gamepad_axis_value(0, gp_axisrv)
	var bindings = min( 1, sqrt( hor*hor + ver*ver ) ) / sqrt( hor*hor + ver*ver )
	x = obj_player.x + hor * bindings * 160;
	y = obj_player.y + ver * bindings * 160;
	draw_sprite(spr_cursor, 0, mouse_x-x, mouse_y-y)
}
