if state = playing {
	CameraPositon()
}

if input_check_pressed("pause") {
	if state == playing {
		instance_deactivate_all(true)
		surface = surface_create(surface_get_width(application_surface), surface_get_height(application_surface))
		surface_copy(surface, 0, 0, application_surface)
		instance_deactivate_all(true)
		instance_activate_object(input_controller_object)
		state = paused;
	} else if (state == paused) {
		state = playing;
		instance_activate_all();
	}
}