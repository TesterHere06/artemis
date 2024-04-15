global.BookOpen = 0;
global.BookWantsOpen = false;

window_set_fullscreen(true);

for (i = 0; i < 4; i++) {
	global.Spell[i] = instance_create_depth(1216 - 100 + 50*i, 928-50, -5, obj_spell);
	global.Spell[i].SpellNumber = i;
}

instance_create_depth(0,0,-5,obj_guide)

global.SpellListLength = 7
global.Cooldown[0] = 120
global.Combo[0] = "SS"
global.Cooldown[1] = 120
global.Combo[1] = "WADAD"
global.Cooldown[2] = 240
global.Combo[2] = "SWWW"
global.Cooldown[3] = 120
global.Combo[3] = "WASD"
global.Cooldown[4] = 120
global.Combo[4] = "DWD"
global.Cooldown[5] = 400
global.Combo[5] = "SADS"
global.Cooldown[6] = 400
global.Combo[6] = "SDSD"
global.Cooldown[7] = 120
global.Combo[7] = "ADWW"
global.Cooldown[8] = 120
global.Combo[8] = "SS"
global.Cooldown[9] = 120
global.Combo[9] = "SS"
global.Cooldown[10] = 120
global.Combo[10] = "SS"