function create_weapon(_sprite = spr_gun, _weaponLength = 0, _bulletObj = obj_testBullet, _cooldown = 1, _bulletNum = 1, _spread = 0) constructor
{
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
	bulletNum = _bulletNum
	spread = _spread
}

//the weapons
global.WeaponList = {
	
	revolver : new create_weapon(spr_gun,sprite_get_bbox_right(spr_gun), obj_testBullet, 9, 1, 0),
	shotgun : new create_weapon(spr_shotgun, sprite_get_bbox_right(spr_shotgun), obj_shellBullet, 19, 5, 50)
	
}