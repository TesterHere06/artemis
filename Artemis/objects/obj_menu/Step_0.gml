if state = playing {
	CameraPositon()
	if obj_player.hp <= 0 {
		surface = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
		surface_copy(surface, 0, 0, application_surface);
		state = dying;
	}
}

if input_check_pressed("pause") and state != dying {
	if state == playing {
		instance_deactivate_all(true);
		surface = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
		surface_copy(surface, 0, 0, application_surface);
		instance_deactivate_all(true);
		instance_activate_object(input_controller_object);
		global.GamepadCursorMode = manual;
		state = paused;
	} else if (state == paused) {
		global.GamepadCursorMode = around;
		state = playing;
		instance_activate_all();
	}
}

if input_check_pressed("gpcursor") {
	 if global.GamepadCursorMode == around {
		 global.GamepadCursorMode = manual;
	 } else global.GamepadCursorMode = around;
}