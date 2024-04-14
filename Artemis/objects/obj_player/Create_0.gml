global.PlayerSpeed = 3;
global.DiagonalSpeed = 1;
global.BonusSpeed = 0;
global.MaxStamina = 100;
global.Stamina = global.MaxStamina;
global.IsGamepad = false
image_xscale = 2
image_yscale = 2

weaponOffsetDist = 4;
weaponLength = 0;
aimDir = 0;
centerYoffset = -5;
centerY = y + centerYoffset;

bulletObj = obj_testBullet;
weaponLength = sprite_get_bbox_right(spr_gun);

shootTimer = 0;
shootCooldown = 9;


x = 200
y = 100

instance_create_depth(0,0,0, obj_menu)