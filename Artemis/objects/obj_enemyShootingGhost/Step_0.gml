//State machine
switch(state){
	case 0:
		// Chase the player
		if instance_exists(obj_player){
			dir = point_direction(x,y, obj_player.x, obj_player.y) + swirl
		}
		
		//Set the correct speed
		spd = chaseSpd;
		
	break;
	
	// Pause and shoot
	case 1:
		// Chase the player
		if instance_exists(obj_player){
			dir = point_direction(x,y, obj_player.x, obj_player.y) + swirl
		}
		
		//Set the correct speed
		spd = 0;
		
		//Stop animatting / manually set the image index
		image_index = 0;
	
	break;
	
}




//getting the speeds
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

//get correct face
if dir > 90 && dir < 270{
	face = -1;
}
else{
	face = 1;
}

//Collisions
if place_meeting(x + xspd, y, obj_enemyParent){
	xspd = 0;
}
if place_meeting(x,y +yspd, obj_enemyParent){
	yspd = 0;	
}

//moving	
x += xspd;
y += yspd

//Set the depth
depth = -y;

// Inherit the parent event
// Getting damaged and dying
event_inherited();

