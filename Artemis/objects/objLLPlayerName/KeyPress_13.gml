if(enteringName == true)
{
	global.playerName = keyboard_string;
	LootLockerSetPlayerName(keyboard_string);

	enteringName = false;
}