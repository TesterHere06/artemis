CameraPositon()
x += 1600 - 208 + SpellNumber * 134;
if Animation[1] > 0 {
	y+= 1092 - 100 * cos(Animation[1]/20) - Animation[3] * 40;
	image_alpha = sin(Animation[1]/20)
	Animation[1] --
} else if Animation[1] > -20 {
	image_alpha = 0;
	Animation[1] --
} else if Animation[1] > -30 {
	y+= 1380 - global.BookOpen * 188 + (Animation[1]+30) * 5;
	image_alpha = 1;
	Animation[1] --
} else if Cooldown > 5 {
	y += 1380 - global.BookOpen * 188;
	Cooldown --
	SpellID = 0
} else if Cooldown > 0 {
	y += 1280 + Cooldown * 20 - global.BookOpen * 188;
	Cooldown --
	SpellID = 0
} else{
	y+= 1280 - global.BookOpen * 188 - Animation[0] * 40;
	image_blend = -1;
}

image_index = SpellID;

if position_meeting(mouse_x, mouse_y, id) and Cooldown < 1 {
	Animation[0] += 0.1
} else Animation[0] -= 0.1
Animation[0] = clamp(Animation[0], 0, 1)

if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id) and Cooldown < 1 {
	image_blend = c_gray;
	Cooldown = 100 + random(400);
	Animation[1] = 30;
	Animation[3] = Animation[0];
}