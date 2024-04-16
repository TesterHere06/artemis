global.bgHspeed = 0;
global.playerScore = 0;

instance_create_layer(320, 124, "Instances", objLLRock);

// Game logic enums
enum GameState
{
	menu,
	playing,
	dead
}

global.gameState = GameState.menu;