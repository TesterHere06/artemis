//State machine
switch (state){
	case 0:
		//Aim for the player
		if instance_exists(obj_player){
			dir = point_direction(x, y, obj_player.x, obj_player.centerY)
		}
		// set the depth to make the player more visible
		depth = -y - 50;
		state = 1;
	break;
	// SHoot / travel
	case 1:
		xspd = lengthdir_x(spd, dir);
		yspd = lengthdir_y(spd, dir);
		x += xspd;
		y += yspd
		
		//Updated depth
		depth = -y;
	
	break;
	
}

// Clean up
if hitConfirm == true && playerDestroy == true {destroy = true;}

if destroy == true {
	instance_destroy();
	create_animated_vfx(spr_poof, x, y, -y, 0)
}

if place_meeting(x, y, obj_collision) {
	destroy = true;
}