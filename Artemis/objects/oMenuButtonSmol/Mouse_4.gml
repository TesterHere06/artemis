if (selectable)
{
	audio_play_sound(sndMenuSelect,9,false);
	switch(text)
	{
		case "PLAY":
		{
			audio_stop_all();
			room_goto(rTest);
			break;	
		}
		case "SETTINGS":
		{
			room_goto(rMenu);
			break;	
		}
		case "EXIT":
		{
			game_end();
			break;	
		}
		case "BACK":
		{
			room_goto(rSettings);	
			break;
		}
		case "RESET POINTS":
		{	
			global.user_data.update_value("POINTS", 0);
			break;	
		}
		case "HOW TO PLAY":
		{
			room_goto(rTutorial);
			break;
		}
		default:
		{
			show_message("uh oh, devs made an oopsie");	
			break;
		}
	}
}