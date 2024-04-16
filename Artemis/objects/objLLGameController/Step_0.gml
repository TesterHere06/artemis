if(global.gameState == GameState.playing)
{
	// Increase the speed of the game
	global.bgHspeed += -0.005;
}

else
{
	global.bgHspeed = 0;
}

// Set the speed of the different layers
layer_hspeed("Ground", global.bgHspeed);
layer_hspeed("TitleText", global.bgHspeed);