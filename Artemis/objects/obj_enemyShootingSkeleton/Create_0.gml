// Inherit the parent event
event_inherited();
image_yscale = 2;
image_xscale = 2;

hp=20;

hitVFX = false;
spd = 0;
chaseSpd = .4;
dir = 0;
xspd = 0;
yspd = 0;

enterAnim = false;

face = 1;

Anim = 0

// State machine
state = 0;

cooldownTime = 3;
shootTimer = irandom(cooldownTime);
windupTime = 3;
recoverTime = 5;
bulletInst = noone;
bulletXoff = 15;
bulletYoff = -30;