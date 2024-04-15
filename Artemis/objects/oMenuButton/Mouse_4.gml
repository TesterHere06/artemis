if (selectable)
{
	audio_play_sound(sndMenuSelect,9,false);
	switch(text)
	{
		case "PLAY":
		{
			audio_stop_all();
			room_goto(rStreet);
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
		case "RETURN TO MAIN MENU":
		{
			oManager.Score = 0;
			oManager.peopleScared = 0;
			oManager.gotKicked = 0;
			oManager.coinsGot = 0;
			oManager.peopleDumped = 0;
			room_goto(rSettings);
			break;
		}
		default:
		{
			show_message("uh oh, devs made an oopsie");	
			break;
		}
	}
}