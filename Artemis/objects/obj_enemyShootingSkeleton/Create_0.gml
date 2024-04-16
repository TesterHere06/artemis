// Inherit the parent event
event_inherited();
image_yscale = 2;
image_xscale = 2;

hp=20;
maxHp = 20;

hitVFX = false;
spd = 0;
chaseSpd = .4;
dir = 0;
xspd = 0;
yspd = 0;
strafe = 90;

enterAnim = true;

face = 1;

Anim = 0

// State machine
state = -1;

cooldownTime = 3;
shootTimer = irandom(cooldownTime);
windupTime = 4;
recoverTime = 6;
bulletamount = 16;
bulletInst = noone;
bulletXoff = 15;
bulletYoff = -30;
emergeSpd = .25;