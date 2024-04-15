/// @description Insert description here

// Inherit the parent event
event_inherited();
image_yscale = 2;
image_xscale = 2;
image_alpha = 0.01;

damage = 1

hitVFX = false;
spd = random_range(.5,.6);
dir = 0;
xspd = 0;
yspd = 0;
swirl = random_range(-30,30)

face = 2;

enterAnim = false;

fadeSpd = 1/15;
emergeSpd = .25;
spd = 0;
chaseSpd = 1.5;

healthstuff = 100

// State machine
state = -1;