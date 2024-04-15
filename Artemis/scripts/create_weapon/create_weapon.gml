function create_weapon(_sprite = spr_gun, _weaponLength = 0, _bulletObj = obj_testBullet, _cooldown = 1, _bulletNum = 1, _spread = 0, _hose = 0, _sound = snd_empty) constructor
{
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
	bulletNum = _bulletNum;
	spread = _spread;
	hose = _hose;
	sound = _sound;
}

//the weapons
global.WeaponList = {
	
	revolver : new create_weapon(spr_gun,sprite_get_bbox_right(spr_gun), obj_testBullet, 15, 1, 0, 0, gunShoot),
	shotgun : new create_weapon(spr_shotgun, sprite_get_bbox_right(spr_shotgun), obj_shellBullet, 25, 5, 50, 0, shotgunShoot),
	assaultrifle : new create_weapon(spr_assaultRifle, sprite_get_bbox_right(spr_assaultRifle), obj_testBullet, 5, 1, 0, 8, gunShoot)
	
}