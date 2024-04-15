if distance_to_object(obj_player) < 200 {
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	speed = 200 / distance_to_object(obj_player);
	if distance_to_object(obj_player) < 10 {
		if global.SoulCounter < 32 {
			global.SoulCounter ++
		}
		instance_destroy();
	}
} else speed = speed / 2;