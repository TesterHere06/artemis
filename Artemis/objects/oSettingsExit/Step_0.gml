if !global.IsGamepad {
	if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id){
		pressed = 1
		image_index = 2
	}
	if mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, id) && pressed = 1{
		room_goto(rMenu);
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
	if GamepadSelected = 2 {
		image_index = 1
		if input_check("accept") {
			image_index = 2
		}
		if input_check_released("accept") {
			room_goto(rMenu);
		}
	} else image_index = 0;
}