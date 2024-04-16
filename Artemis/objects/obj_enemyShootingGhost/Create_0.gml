// Inherit the parent event
event_inherited();
image_yscale = 2;
image_xscale = 2;

hitVFX = false;
spd = 0;
chaseSpd = .5;
dir = 0;
xspd = 0;
yspd = 0;
swirl = random_range(-10,10)

face = 1;
enterAnim = true;

fadeSpd = 1/15;
emergeSpd = .25;

Anim = 0

// State machine
state = -1;

cooldownTime = 4*60;
shootTimer = irandom(cooldownTime);
windupTime = 60;
recoverTime = 45;
bulletInst = noone;
bulletXoff = 15;
bulletYoff = -30;