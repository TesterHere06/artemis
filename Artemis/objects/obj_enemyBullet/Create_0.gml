// Inherit the parent event
event_inherited();

dir = 0;
spd = 2;
xspd = 0;
yspd = 0;

//State control
state = 0;
// state = 0, aim for the player and wait for enemy to shoot
// state = 1, shoot towards the player

// Clean Up
destroy = false;
playerDestroy = true;