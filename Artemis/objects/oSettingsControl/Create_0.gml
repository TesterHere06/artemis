audio_group_load(SFXGROUP);
audio_group_load(MUSICGROUP);
global.MusicVolume = 0.5;
global.SoundVolume = 0.3;
LootLockerInitialize("dev_462171d5c7d6486abb878d8623863925", "1.0.0", "true", "21536");
LootLockerSetPlayerName("");
audio_group_set_gain(SFXGROUP, global.SoundVolume, 0);
audio_group_set_gain(MUSICGROUP, global.MusicVolume, 0);
room_goto(rMenu);