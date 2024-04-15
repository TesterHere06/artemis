if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id){
	global.cursor_x = mouse_x;
	global.cursor_y = mouse_y;
	room_goto_next();
}