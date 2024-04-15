global.PlayerSpeed = 3;
DiagonalSpeed = 1;
SpeedUp = 0;
global.BonusSpeed = 0;
global.MaxStamina = 100;
global.Stamina = global.MaxStamina;
global.IsGamepad = false
global.WeaponChanged = 0;
global.CurrentCombo = "";
global.SoulCounter = 0;
image_xscale = 2
image_yscale = 2

maxhp = 7

//damage setup
get_damaged_create(maxhp, true);

weaponOffsetDist = 4;
aimDir = 0;
centerYoffset = -5;
centerY = y + centerYoffset;

shootTimer = 0;

//Weapon choice
weapon = global.WeaponList.revolver;

x = 1162
y = 600

instance_create_depth(0,0,0, obj_menu)