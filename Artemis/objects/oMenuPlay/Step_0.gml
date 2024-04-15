if !global.IsGamepad {
	if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id){
		pressed = 1
		image_index = 2
	}
	if mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, id) && pressed = 1{
		global.cursor_x = mouse_x;
		global.cursor_y = mouse_y;
		room_goto_next();
	}
} else {
	if input_check_pressed("up") {
		GamepadSelected --
		if GamepadSelected < 0 {GamepadSelected = 2;}
	}
	if input_check_pressed("down") {
		GamepadSelected ++
		if GamepadSelected > 2 {GamepadSelected = 0;}
	}
	if GamepadSelected = 0 {
		image_index = 1
		if input_check("accept") {
			image_index = 2
		}
		if input_check_released("accept") {
			global.cursor_x = mouse_x;
			global.cursor_y = mouse_y;
			audio_stop_sound(funnyBit_MainMenu);
			room_goto(Room1);
		}
	} else image_index = 0;
}