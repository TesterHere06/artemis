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

draw_set_color(c_red)
draw_rectangle(10, surface_get_height(application_surface), 10+global.PlayerMaxHP*10, surface_get_height(application_surface)-40, false)
draw_set_color(c_yellow)
draw_rectangle(10, surface_get_height(application_surface), 10+global.PlayerHP*10, surface_get_height(application_surface)-40, false)

if !global.IsGamepad {
	global.cursor_x = mouse_x;
	global.cursor_y = mouse_y;
} else {
	if global.GamepadCursorMode == around {
		if abs(gamepad_axis_value(0, gp_axisrh)) + abs(gamepad_axis_value(0, gp_axisrv)) >= 0.2 {
			hor = gamepad_axis_value(0, gp_axisrh)
			ver = gamepad_axis_value(0, gp_axisrv)
			bindings = max(1, min(1, sqrt( hor*hor + ver*ver ) ) ) / sqrt( hor*hor + ver*ver )
		}
		global.cursor_x = obj_player.x + hor * bindings * 230;
		global.cursor_y = obj_player.y + ver * bindings * 230;
	} else {
		if abs(gamepad_axis_value(0, gp_axisrh)) + abs(gamepad_axis_value(0, gp_axisrv)) >= 0.2 {
			global.cursor_x += gamepad_axis_value(0, gp_axisrh) * 20
			global.cursor_y += gamepad_axis_value(0, gp_axisrv) * 20
		}
	}
}
global.cursor_x = clamp(global.cursor_x, x, x + surface_get_width(application_surface));
global.cursor_y = clamp(global.cursor_y, y, y + surface_get_height(application_surface));
draw_set_alpha(1)
draw_sprite(spr_cursor, 0, global.cursor_x-x, global.cursor_y-y)