global.BookOpen = 0;
BookWantsOpen = false;

window_set_fullscreen(true);

for (i = 0; i < 4; i++) {
	global.Spell[i] = instance_create_depth(1216 - 100 + 50*i, 928-50, -5, obj_spell);
	global.Spell[i].SpellNumber = i;
}