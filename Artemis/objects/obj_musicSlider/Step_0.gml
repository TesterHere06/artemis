if(Grab){
    x = mouse_x
    if(x < 774){
        x = 774
    }else if(x > 1145){
        x = 1145
    }
    global.MusicVolume = (x-774)/371
		if x < 780{
	global.SoundVolume = 0;	
	}
    audio_group_set_gain(MUSICGROUP, global.MusicVolume, 0);
}