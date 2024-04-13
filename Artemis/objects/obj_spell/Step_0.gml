CameraPositon()
x += 1600 - 208 + SpellNumber * 134;
if Cooldown > 0 {
	y += 1380 - global.BookOpen * 188;
} else y += 1280 - global.BookOpen * 188 - Animation * 40;

if position_meeting(mouse_x, mouse_y, id) and Cooldown = 0 {
	Animation += 0.1
} else Animation -= 0.1
Animation = clamp(Animation, 0, 1)

if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id) {
	image_blend = c_gray;
	Cooldown = 100 + random(400)
}

if Cooldown > 0 {
	Cooldown -= 1
}