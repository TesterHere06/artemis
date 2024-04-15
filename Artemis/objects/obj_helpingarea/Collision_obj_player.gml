if Heal_Cooldown < 1 {
	if obj_player.maxhp > obj_player.hp {
		obj_player.hp ++
		Heal_Cooldown = 600
	}
}