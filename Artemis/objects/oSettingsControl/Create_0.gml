audio_group_load(SFXGROUP);
audio_group_load(MUSICGROUP);
global.MusicVolume = 0.5;
global.SoundVolume = 0.3;

global.user_data = new user_data_struct();

if (file_exists("user_data.json"))
{
    var user_data = load_json("user_data.json");

    global.user_data.load_values(user_data);
}

save_json(global.user_data, "user_data.json");

LootLockerInitialize("dev_462171d5c7d6486abb878d8623863925", "1.0.0", "true", "21536");
LootLockerSetPlayerName("");
audio_group_set_gain(SFXGROUP, global.SoundVolume, 0);
audio_group_set_gain(MUSICGROUP, global.MusicVolume, 0);
room_goto(rMenu);