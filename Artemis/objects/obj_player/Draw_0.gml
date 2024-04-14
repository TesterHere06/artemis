if aimDir >= 180 ^^ aimDir < 360{
	draw_my_weapon();
}


//Draw the player
draw_self();

//draw the weapon above the player
if aimDir >= 0 ^^ aimDir < 180{
	draw_my_weapon();
}


//Draw hp as a number
draw_text(x, y, string(hp));