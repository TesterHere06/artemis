/// @description Making enemies go to player

with(obj_enemyParent){
	direction = point_direction(x,y, obj_player.x, obj_player.y);
	speed = walkSpeed;
	
	if (obj_player.x > x){image_xscale = 2;}
	else {image_xscale = -2;}
	
	depth = -y;
}

obj_player.depth = -obj_player.y;

//Loop
alarm[0] = 20;