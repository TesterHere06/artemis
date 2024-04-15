function CastSpell(){
	if SpellID == 0 or SpellID > global.SpellListLength {
		show_debug_message("What")
	}
	if SpellID == 1 {
		obj_player.weapon = global.WeaponList.shotgun
		global.WeaponChanged = 1800;
	}
	if SpellID == 2 {
		obj_player.weapon = global.WeaponList.assaultrifle
		global.WeaponChanged = 1200;
	}
	if SpellID == 3 {
		instance_create_depth(global.cursor_x, global.cursor_y, -2500, obj_fireball)
	}
	if SpellID == 4 {
		global.BuffSpeed = 2
		global.BuffDuration[0] = 600
		instance_create_depth(obj_player.x, obj_player.y, -3, obj_poof)
		instance_create_depth(obj_player.x, obj_player.y, -3, obj_poof)
		instance_create_depth(obj_player.x, obj_player.y, -3, obj_poof)
	}
	if SpellID == 5 {
		instance_create_depth(global.cursor_x, global.cursor_y, -50, obj_helpingarea)
	}
	if SpellID == 6 {
		instance_create_depth(global.cursor_x, global.cursor_y, -50, obj_damagingarea)
	}
	if SpellID == 7 {
		instance_create_depth(global.cursor_x, global.cursor_y, 0, obj_friend)
	}
}