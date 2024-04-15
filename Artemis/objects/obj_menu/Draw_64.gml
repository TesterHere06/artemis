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
	draw_set_font(Joystix)
	draw_text(surface_get_width(application_surface) / 2, surface_get_height(application_surface) / 2,
		"Game is Paused");
}

if (state == dying) {
	if obj_player.sprite_index == spr_pl_death and obj_player.image_index >= 3 {
		draw_set_color(c_black);
		draw_set_alpha(1.0);
		
		draw_surface(surface, 0, 0);
		
		draw_set_alpha(0.3);
		draw_rectangle(0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false);
		
		draw_set_alpha(1.0);
		if !global.IsGamepad {
			draw_sprite(sTryAgain, 0, surface_get_width(application_surface)/2, surface_get_height(application_surface)/2)
		} else draw_sprite(sTryAgain, 1, surface_get_width(application_surface)/2, surface_get_height(application_surface)/2)
		if input_check_released("cancel") {
			room_restart()
		}
	}
}

if (state == playing) {
	draw_set_font(Joystix)
	draw_set_color(c_white);
	draw_sprite(spr_bars, 0, 20, surface_get_height(application_surface) - 60);
	draw_sprite(spr_bars, 0, 20, surface_get_height(application_surface) - 120);
	draw_sprite_part(spr_bars, 5, 0, 0, 12+372*obj_player.hp/obj_player.maxhp, 60, 20, surface_get_height(application_surface) - 60);
	draw_sprite_part(spr_bars, 2, 0, 0, 12+372*global.SoulCounter/32, 60, 20, surface_get_height(application_surface) - 120);
	draw_text(410, surface_get_height(application_surface) - 120, "X" + string(global.SoulCounter))
	draw_sprite(spr_bars, 4, 20, surface_get_height(application_surface) - 60);
	draw_sprite(spr_bars, 1, 20, surface_get_height(application_surface) - 120);
}

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