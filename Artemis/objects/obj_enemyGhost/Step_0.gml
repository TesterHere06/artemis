var _wallCollisions = false
var _getDamage = true;
var _enemyCollisions = false;

//State machine
switch(state){
	// Spawn in from grave
	case -1:
		//Enterance animation
		if enterAnim {
			sprite_index = spr_enemyFollowingGhostRise;
		}
		
		//Walking out
		_enemyCollisions = false;
		_wallCollisions = false;
		_getDamage = false;
		if image_alpha >= 1{
			//set the right speed and direction
			spd = emergeSpd;
			dir = 270;
		}
		
		if image_index >= image_number - 1 {
			sprite_index = spr_enemyFollowingGhost;
			image_index = 0
		}
		//Switch to chasing state
		if !place_meeting(x, y, obj_collision) and sprite_index == spr_enemyFollowingGhost{
			state = 0;
		}
		
	break
	
	
	case 0:
	if global.GhostAmount < 16 {
		// Chase the player
		if instance_exists(obj_player){
			dir = point_direction(x,y, obj_player.x, obj_player.y) + swirl
		}
		
		//Set the correct speed
		spd = chaseSpd ;
	} else {
				// Chase the player
		if instance_exists(obj_player){
			dir = point_direction(x,y, obj_player.x, obj_player.y) + swirl*2
		}
		
		//Set the correct speed
		spd = chaseSpd * 1.5 * global.GhostAmount div 10 ;
	}
	break;
	
}




//getting the speeds
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

//get correct face
if dir > 90 && dir < 270{
	face = -2;
}
else{
	face = 2;
}

//Collisions
if _wallCollisions == true{
	if place_meeting(x + xspd, y, obj_collision){
		xspd = 0;
	}
	if place_meeting(x,y +yspd, obj_collision){
		yspd = 0;	
	}
}
if _enemyCollisions == true{
	if place_meeting(x + xspd, y, obj_enemyParent){
		xspd = 0;
	}
	if place_meeting(x,y +yspd, obj_enemyParent){
		yspd = 0;	
	}
}

//moving	
x += xspd;
y += yspd

//Set the depth
depth = -y;

if !place_meeting(x, y, obj_enemyParent) {
	_enemyCollisions = true;
}

// Inherit the parent event
// Getting damaged and dying
if _getDamage == true{
	event_inherited();
}
