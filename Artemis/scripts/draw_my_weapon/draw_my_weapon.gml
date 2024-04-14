function draw_my_weapon(){
	
	//Draw the weapon
	//Get the weapon off the player's body
	var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
	var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);
	
	var _weaponYsc1 = 1;
	if aimDir > 90 && aimDir <270
	{
		_weaponYsc1 = -1;
	}
	
	draw_sprite_ext(weapon.sprite, 0, x + _xOffset, centerY + _yOffset, 1, _weaponYsc1, aimDir, c_white, 1);
}

//the weapons
global.WeaponList = {
	
	revolver : new create_weapon(spr_gun,sprite_get_bbox_right(spr_gun), obj_testBullet, 9),
	shotgun : new create_weapon(spr_shotgun, sprite_get_bbox_right(spr_shotgun), obj_shellBullet, 19)
	
}

