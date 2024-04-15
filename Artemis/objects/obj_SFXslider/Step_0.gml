image_index = 0;
if !global.IsGamepad {
if(Grab){
    x = mouse_x
    if(x < 774){
        x = 774
    }else if(x > 1145){
        x = 1145
    }
    global.SoundVolume = (x-774)/371
	if x < 780{
	global.SoundVolume = 0;	
	}
	audio_group_set_gain(SFXGROUP, global.SoundVolume, 0);
}
} else {
		if input_check_pressed("up") {
		GamepadSelected --
		if GamepadSelected < 0 {GamepadSelected = 2;}
	}
	if input_check_pressed("down") {
		GamepadSelected ++
		if GamepadSelected > 2 {GamepadSelected = 0;}
	}
if GamepadSelected == 1 {
	image_index = 1;
	x += (input_check("right") - input_check("left"))*2
	if(x < 774){
        x = 774
    }else if(x > 1145){
        x = 1145
    }
    global.SoundVolume = (x-774)/371
	if x < 780{
	global.SoundVolume = 0;	
	}
	audio_group_set_gain(SFXGROUP, global.SoundVolume, 0)
}
}
show_debug_message(string(x) + " " + string(mouse_x))