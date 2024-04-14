function CastSpell(){
	if SpellID == 0 or SpellID > global.SpellListLength {
		show_debug_message("What")
	}
	if SpellID == 1 {
		obj_player.weapon = global.WeaponList.shotgun
		global.WeaponChanged = 600;
	}
}