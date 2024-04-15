if(insertingName)
{
	// Set the name of the logged in player
	// to what the player has typed on the keyboard
	// when enter was pressed
	LootLockerSetPlayerName(keyboard_string);

	// Reset the variables
	keyboard_string = "";
	insertingName = false;
}