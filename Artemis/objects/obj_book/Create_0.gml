global.BookOpen = 0;
global.BookWantsOpen = false;

image_xscale = 3
image_yscale = 3
depth = -4500

window_set_fullscreen(true);

for (i = 0; i < 4; i++) {
	global.Spell[i] = instance_create_depth(1216 - 100 + 50*i, 928-50, -5000, obj_spell);
	global.Spell[i].SpellNumber = i;
}

instance_create_depth(0,0,-5,obj_guide)

global.SpellListLength = 7
global.Cooldown[0] = 120
global.Combo[0] = "SS"
global.Cost[0] = 0
global.Cooldown[1] = 120
global.Combo[1] = "WADAD"
global.Cost[1] = 10
global.Cooldown[2] = 240
global.Combo[2] = "SWWW"
global.Cost[2] = 10
global.Cooldown[3] = 120
global.Combo[3] = "WASD"
global.Cost[3] = 5
global.Cooldown[4] = 120
global.Combo[4] = "DWD"
global.Cost[4] = 3
global.Cooldown[5] = 400
global.Combo[5] = "SADS"
global.Cost[5] = 10
global.Cooldown[6] = 400
global.Combo[6] = "SDSD"
global.Cost[6] = 10
global.Cooldown[7] = 120
global.Combo[7] = "ADWW"
global.Cost[7] = 3
global.Cooldown[8] = 120
global.Combo[8] = "SS"
global.Cooldown[9] = 120
global.Combo[9] = "SS"
global.Cooldown[10] = 120
global.Combo[10] = "SS"