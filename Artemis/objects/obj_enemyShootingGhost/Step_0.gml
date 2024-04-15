//State machine
switch(state){
	case 0:
		// Chase the player
		if instance_exists(obj_player){
			dir = point_direction(x,y, obj_player.x, obj_player.y)
		}
		
		//Set the correct speed
		spd = chaseSpd;
		
	break
	
}




//getting the speeds
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

//get correct face
if xspd > 0{face =2;}
if xspd < 0{face = -2;}

//Collisions
if place_meeting(x + xspd, y, obj_enemyParent){
	xspd = 0;
}
if place_meeting(x,y +yspd, obj_enemyParent){
	yspd = 0;	
}

//moving	
x += xspd;
y += yspd;

// Inherit the parent event
// Getting damaged and dying
event_inherited();

