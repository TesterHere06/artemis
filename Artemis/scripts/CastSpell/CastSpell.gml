function CastSpell(){
	if SpellID == 0 or SpellID > global.SpellListLength {
		show_debug_message("What")
	}
	if SpellID == 1 {
		obj_player.weapon = global.WeaponList.shotgun
		global.WeaponChanged = 600;
	}
	if SpellID == 2 {
		obj_player.weapon = global.WeaponList.assaultrifle
		global.WeaponChanged = 300;
	}
	if SpellID == 3 {
		obj_player.weapon = global.WeaponList.assaultrifle
		global.WeaponChanged = 300;
	}
	if SpellID == 4 {
		global.BuffSpeed = 2
		global.BuffDuration[0] = 600
	}
}