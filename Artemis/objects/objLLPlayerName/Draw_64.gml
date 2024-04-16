draw_set_font(Joystix_verySmall);


draw_set_halign(fa_left);
draw_set_valign(fa_top);

// If we are currently inserting the name
// show the current keyboard_string
if(enteringName == true)
{
	draw_set_colour($FFFFFFFF & $ffffff);
	var l7C8EB2D3_0=($FFFFFFFF >> 24);
	draw_set_alpha(l7C8EB2D3_0 / $ff);

	draw_text_transformed(1384, 960, "" + string(keyboard_string), 3, 3, 0);
}

else
{
	// If the player doesn't have a name,
	// show "Enter name..." instead
	if(LLPlayerName() == "")
	{
		draw_set_colour($FF191919 & $ffffff);
		var l3462ACC8_0=($FF191919 >> 24);
		draw_set_alpha(l3462ACC8_0 / $ff);
	
		draw_text_transformed(1384, 960, "" + string("Name..."), 3, 3, 0);
	}

	// Otherwise, show the players name
	else
	{
		draw_set_colour($FFFFFFFF & $ffffff);
		var l210E5DC5_0=($FFFFFFFF >> 24);
		draw_set_alpha(l210E5DC5_0 / $ff);
	
		draw_text_transformed(1384, 960, "" + string(LLPlayerName()), 3, 3, 0);
	}
}
