gamepad_set_axis_deadzone(0, 0.3);
window_set_cursor(cr_none);

playing = 0;
paused = 1;

around = 0;
manual = 1;

global.GamepadCursorMode = around;

cursor_x = 0
cursor_y = 0

hor = 0
ver = 0
bindings = 0

state = playing;

surface = surface_create(surface_get_width(application_surface), surface_get_height(application_surface))