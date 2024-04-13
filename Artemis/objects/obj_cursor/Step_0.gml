if INPUT_MOUSE {
	x = mouse_x;
	y = mouse_y;
} else {
	x = obj_player.x + gamepad_axis_value(0, gp_axislh) * 50;
	y = obj_player.y + gamepad_axis_value(0, gp_axislv) * 50;
}