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
tiredness = 0;
swirl = choose(-90,90);

face = 1;

enterAnim = true;

Anim = 0

fadeSpd = 1/15;
emergeSpd = .25;
spd = 0;
chaseSpd = 1;
hp = 15;
maxHp = 15;

// State machine
state = -1;