if(enteringName == true)
{
	global.playerName = keyboard_string;
	LootLockerSetPlayerName(keyboard_string);
	global.user_data.update_value("NAME", keyboard_string);

	enteringName = false;
}