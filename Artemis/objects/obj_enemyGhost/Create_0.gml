/// @description Insert description here

// Inherit the parent event
event_inherited();
image_yscale = 2;
image_xscale = 2;

hitVFX = false;
spd = random_range(.5,.6);
dir = 0;
xspd = 0;
yspd = 0;
swirl = random_range(-30,30)
Anim = 0
global.GhostAmount ++

face = 1;

enterAnim = true;

fadeSpd = 1/15;
emergeSpd = .25;
spd = 0;
chaseSpd = random_range(.5,.6);

// State machine
state = -1;