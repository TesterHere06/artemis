if input_check_pressed("book"){
	global.BookWantsOpen = !global.BookWantsOpen
}

if global.BookWantsOpen and global.BookOpen < 1 {
	global.BookOpen += 0.1
} else {
	if !global.BookWantsOpen and global.BookOpen > 0 {
		global.BookOpen -= 0.1
	}
}
CameraPositon()
x += 1600;
y += 1248 - global.BookOpen * 120;

var isspell = false
if string_length(global.CurrentCombo) > 0 {
	for (i = 0; i < 4; i++) {
		if string_pos(global.CurrentCombo, global.Combo[global.Spell[i].SpellID]) > 0 {
			isspell = true
		}
	}
	if isspell == false {
		global.CurrentCombo = "";
	}
}