// Inherit the parent event
event_inherited();

image_xscale = 2
image_yscale = 2

dir = 0;
spd = 5;
xspd = 0;
yspd = 0;

//State control
state = 0;
// state = 0, aim for the player and wait for enemy to shoot
// state = 1, shoot towards the player

// Clean Up
destroy = false;
playerDestroy = true;