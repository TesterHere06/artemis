if (live_call()) return live_result;

draw_set_font(font);

draw_set_halign(halign);
draw_set_valign(valign);

if (text == "HIGHSCORE: ")
{
	extra = global.user_data.POINTS;
}

if (shadow)
{
	draw_set_color(c_black);
	draw_text_transformed(x,y-3,string(text)+string(extra),xscale,yscale,angle);
}

draw_set_color(col);
draw_text_transformed(x,y-4,string(text)+string(extra),xscale,yscale,angle);

if (selectable)
{
	if (hover) 
	{
		col = highlightCol; 
		x = lerp(x,xStart+2,0.1);
		angle = wave(-5,5,2,0);
		xscale = lerp(xscale,1.2,0.1);
		yscale = lerp(yscale,1.2,0.1);
	}else 
	{
		col = idleCol;
		x = lerp(x,xStart,0.1);
		angle = lerp(angle,0,0.1);
		xscale = lerp(xscale,1,0.1);
		yscale = lerp(yscale,1,0.1);
	}
}