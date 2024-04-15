if mouse_check_button_pressed(mb_left)
{
	var button_x = x+sprite_width*global.user_data.MUS;	
	var button_y = y;
	var button_radius = sprite_get_width(sSliderButton)/2;
	if point_in_circle(mouse_x,mouse_y,button_x,button_y,button_radius)
	{
		selected = true;
	}
}

if !mouse_check_button(mb_left)
{
	selected = false;	
}

if selected
{
	global.user_data.update_value("MUS", clamp((mouse_x-x)/sprite_width,0,maxvalue));
}