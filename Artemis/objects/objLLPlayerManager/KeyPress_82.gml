// This checks if the playerName
//  object is not currently inputting the name and is on the menu state.
// Otherwise you wouldn't be able to have a 
// name with an R in it.
/*
This checks if the playerName
 object is not currently inputting the name and is on the menu state.
Otherwise you wouldn't be able to have a 
name with an R in it.
*/
if(global.gameState == GameState.menu &&objLLPlayerName.insertingName == false)
{
	LootLockerReset();
}/**/