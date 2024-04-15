// Inherit the parent event
event_inherited();
image_yscale = 2;
image_xscale = 2;

hitVFX = false;
spd = 0;
chaseSpd = .4;
dir = 0;
xspd = 0;
yspd = 0;

face = 1;

// State machine
state = 0;

cooldownTime = 30;
shootTimer = 0;
windupTime = 2;
recoverTime = 1;
bulletInst = noone;
bulletXoff = 15;
bulletYoff = -30;