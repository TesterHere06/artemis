if input_check_pressed("book") and obj_player.hp > 0{
	global.BookWantsOpen = !global.BookWantsOpen
}

if global.BookWantsOpen and global.BookOpen < 1.2 {
	global.BookOpen += 0.1
} else {
	if !global.BookWantsOpen and global.BookOpen > 0 {
		global.BookOpen -= 0.1
	}
}
CameraPositon()
x += 1600;
y += 1288 - global.BookOpen * 120;

var isspell = false
if string_length(global.CurrentCombo) > 0 {
	for (i = 0; i < 4; i++) {
		if string_pos(global.CurrentCombo, global.Combo[global.Spell[i].SpellID]) = 1 {
			isspell = true
		}
	}
	if isspell == false {
		global.CurrentCombo = "";
		var spell = instance_create_depth(obj_player.x, obj_player.y, -3000, obj_poofspell)
		spell.image_index = 4
	}
}