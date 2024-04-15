if (live_call()) return live_result;

draw_set_font(font);

draw_set_halign(halign);
draw_set_valign(valign);

if (text == "POINTS: ")
{
	extra = global.user_data.POINTS;
}

switch(text)
{
	case "COINS GOT: ":
	{
		if (shadow)
		{
			draw_set_color(c_black);
			draw_text_transformed(x,y+1,string(text)+string(oManager.coinsGot),xscale,yscale,angle);
		}

		draw_set_color(col);
		draw_text_transformed(x,y,string(text)+string(oManager.coinsGot),xscale,yscale,angle);
		break;	
	}
	case "PEOPLE DUMPED: ":
	{
		if (shadow)
		{
			draw_set_color(c_black);
			draw_text_transformed(x,y+1,string(text)+string(oManager.peopleDumped),xscale,yscale,angle);
		}

		draw_set_color(col);
		draw_text_transformed(x,y,string(text)+string(oManager.peopleDumped),xscale,yscale,angle);
		break;	
	}
	case "PEOPLE SCARED: ":
	{
		if (shadow)
		{
			draw_set_color(c_black);
			draw_text_transformed(x,y+1,string(text)+string(oManager.peopleScared),xscale,yscale,angle);
		}

		draw_set_color(col);
		draw_text_transformed(x,y,string(text)+string(oManager.peopleScared),xscale,yscale,angle);
		break;	
	}
	case "GOT KICKED: ":
	{
		if (shadow)
		{
			draw_set_color(c_black);
			draw_text_transformed(x,y+1,string(text)+string(oManager.gotKicked),xscale,yscale,angle);
		}

		draw_set_color(col);
		draw_text_transformed(x,y,string(text)+string(oManager.gotKicked),xscale,yscale,angle);
		break;	
	}
	case "SCORE: ":
	{
		if (shadow)
		{
			draw_set_color(c_black);
			draw_text_transformed(x,y+1,string(text)+string(oManager.Score),xscale,yscale,angle);
		}

		draw_set_color(col);
		draw_text_transformed(x,y,string(text)+string(oManager.Score),xscale,yscale,angle);
		break;	
	}
	default:
	{
		if (shadow)
		{
			draw_set_color(c_black);
			draw_text_transformed(x,y+1,string(text)+string(extra),xscale,yscale,angle);
		}

		draw_set_color(col);
		draw_text_transformed(x,y,string(text)+string(extra),xscale,yscale,angle);
	}
}

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