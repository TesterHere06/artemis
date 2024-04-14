gamepad_set_axis_deadzone(0, 0.3);

playing = 0;
paused = 1;

around = 0;
manual = 1;

cursor_x = 0
cursor_y = 0

state = playing;

surface = surface_create(surface_get_width(application_surface), surface_get_height(application_surface))