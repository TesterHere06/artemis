if distance_to_object(obj_player) < 400 {
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	speed = 400 / distance_to_object(obj_player)
}