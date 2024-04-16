audio_group_load(SFXGROUP);
audio_group_load(MUSICGROUP);

global.user_data = new user_data_struct();

if (file_exists("user_data.json"))
{
    var user_data = load_json("user_data.json");

    global.user_data.load_values(user_data);
}
global.MusicVolume = global.user_data.MUS;
global.SoundVolume = global.user_data.SFX;

save_json(global.user_data, "user_data.json");

LootLockerInitialize("prod_df9fa2054fb8430aa38933ac0d615d20", "1.0.0", "false", "21544");
LootLockerSetPlayerName(global.user_data.NAME);
audio_group_set_gain(SFXGROUP, global.SoundVolume, 0);
audio_group_set_gain(MUSICGROUP, global.MusicVolume, 0);
room_goto(rMenu);