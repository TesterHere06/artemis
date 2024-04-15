if Heal_Cooldown < 1 {
	if obj_player.maxhp > obj_player.hp {
		obj_player.hp ++
		Heal_Cooldown = 600
		instance_create_depth(obj_player.x, obj_player.y, -3, obj_poofheal)
		instance_create_depth(obj_player.x, obj_player.y, -3, obj_poofheal)
		instance_create_depth(obj_player.x, obj_player.y, -3, obj_poofheal)
	}
}