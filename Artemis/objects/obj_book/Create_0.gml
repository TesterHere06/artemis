global.BookOpen = 0;
global.BookWantsOpen = false;
global.ComboLength = 0;

window_set_fullscreen(true);

for (i = 0; i < 4; i++) {
	global.Spell[i] = instance_create_depth(1216 - 100 + 50*i, 928-50, -5, obj_spell);
	global.Spell[i].SpellNumber = i;
}

instance_create_depth(0,0,-5,obj_guide)

global.Cooldown[0] = 120
global.Combo[0] = "SS"
global.Cooldown[1] = 120
global.Combo[1] = "WADAD"
global.Cooldown[2] = 120
global.Combo[2] = "SS"
global.Cooldown[3] = 120
global.Combo[3] = "SS"
global.Cooldown[4] = 120
global.Combo[4] = "SS"
global.Cooldown[5] = 120
global.Combo[5] = "SS"
global.Cooldown[6] = 120
global.Combo[6] = "SS"
global.Cooldown[7] = 120
global.Combo[7] = "SS"
global.Cooldown[8] = 120
global.Combo[8] = "SS"
global.Cooldown[9] = 120
global.Combo[9] = "SS"
global.Cooldown[10] = 120
global.Combo[10] = "SS"