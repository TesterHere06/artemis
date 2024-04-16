draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x + 0, y + -20,  + string("Player ID: "+string(LLPlayerID())));

if(enteringName == true)
{
	draw_text(x + 0, y + 0,  + string("Player Name:"+keyboard_string+"\nPress Enter to submit\nESC to cancel"));
}

else
{
	draw_text(x + 0, y + 0,  + string("Player Name: "+LLPlayerName()+"\nPress C to change"));
}