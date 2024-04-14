CameraPositon()
x += 1600 - 208 + SpellNumber * 134;
if Animation[1] > 0 {
	y+= 1092 - 100 * cos(Animation[1]/20) - Animation[3] * 40;
	image_alpha = sin(Animation[1]/20)
	Animation[1] --
} else if Animation[1] > -20 {
	image_alpha = 0;
	Animation[1] --
	image_index = 0;
	if SpellID == 0 {
	var pickedspellid = false
	do {
		SpellID = irandom_range(1,global.SpellListLength);
		pickedspellid = true;
		for (var i = 0; i < 4; i++) {
			if SpellNumber!= i and SpellID == global.Spell[i].SpellID {
				pickedspellid = false;
			}
		}	
	} until pickedspellid;
	}
} else if Animation[1] > -30 {
	y+= 1380 - global.BookOpen * 188 + (Animation[1]+30) * 5;
	image_alpha = 1;
	Animation[1] --
} else if Cooldown > 5 {
	y += 1380 - global.BookOpen * 188;
	Cooldown --
} else if Cooldown > 0 {
	y += 1280 + Cooldown * 20 - global.BookOpen * 188;
	Cooldown --
	image_index = SpellID;
} else{
	y+= 1280 - global.BookOpen * 188 - Animation[0] * 40;
	image_blend = -1;
}

if string_length(global.CurrentCombo) > 0 and string_pos(global.CurrentCombo, global.Combo[SpellID]) = 1 and Cooldown < 1 {
	Animation[0] += 0.1
} else Animation[0] -= 0.1
if global.CurrentCombo == global.Combo[SpellID] and Cooldown < 1 {
	Animation[0] = clamp(Animation[0], 0, 1)
} else Animation[0] = clamp(Animation[0], 0, 0.5)

if input_check_pressed("shoot") and global.Combo[SpellID] == global.CurrentCombo and Cooldown < 1 {
	image_blend = c_gray;
	
	global.CurrentCombo = "";
	
	CastSpell()
	
	Cooldown = global.Cooldown[SpellID];
	Animation[1] = 30;
	Animation[3] = Animation[0];
	
	var pickedspellid = false
	PrevSpellID = SpellID
	do {
		SpellID = irandom_range(1,global.SpellListLength);
		pickedspellid = true;
		for (var i = 0; i < 4; i++) {
			if SpellNumber!= i and SpellID == global.Spell[i].SpellID {
				pickedspellid = false;
			} else if PrevSpellID == SpellID pickedspellid = false;
		}
	} until pickedspellid;
}