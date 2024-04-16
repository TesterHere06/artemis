// Set state to playing.
// Set the speed to start the game.
global.gameState = GameState.playing;
global.bgHspeed = -3;

// Call Event 0 on the PlayerObject.
// This changes the players sprite to the run sprite.
with(objLLPlayer) {
event_user(0);
}

// Destroy the PlayerName input field
with(objLLPlayerName) instance_destroy();

// Destroy self
instance_destroy();