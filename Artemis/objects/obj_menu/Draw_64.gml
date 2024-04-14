if (state == paused) {
	draw_set_color(c_black);
	draw_set_alpha(1.0);
	
	draw_surface(surface, 0, 0);
	
	draw_set_alpha(0.3);
	draw_rectangle(0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false);
	
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_halign(fa_middle);
	draw_text(surface_get_width(application_surface) / 2, surface_get_height(application_surface) / 2,
		"Game is Paused");
}


if !global.IsGamepad {
	cursor_x = mouse_x-x;
	cursor_y = mouse_y-y;
} else {
	if global.GamepadCursorMode == around {
		var hor = gamepad_axis_value(0, gp_axisrh)
		var ver = gamepad_axis_value(0, gp_axisrv)
		var bindings = min( 1, sqrt( hor*hor + ver*ver ) ) / sqrt( hor*hor + ver*ver )
		cursor_x = obj_player.x-x + hor * bindings * 160;
		cursor_y = obj_player.y-y + ver * bindings * 160;
	} else {
		cursor_x += gamepad_axis_value(0, gp_axisrh) * 20
		cursor_y += gamepad_axis_value(0, gp_axisrv) * 20
	}
}
draw_set_alpha(1)
draw_sprite(spr_cursor, 0, cursor_x, cursor_y)
