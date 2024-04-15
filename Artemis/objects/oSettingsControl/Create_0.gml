audio_group_load(SFXGROUP);
audio_group_load(MUSICGROUP);
global.MusicVolume = 0.5;
global.SoundVolume = 0.3;
audio_group_set_gain(SFXGROUP, global.SoundVolume, 0);
audio_group_set_gain(MUSICGROUP, global.MusicVolume, 0);
room_goto(rMenu);