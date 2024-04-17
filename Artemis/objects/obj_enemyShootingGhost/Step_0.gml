var _wallCollisions = false
var _getDamage = true;
var _enemyCollisions = false;

//State machine
switch(state){
	// Spawn in from grave
	case -1:
		//Enterance animation
		if enterAnim {
			sprite_index = spr_enemyShootyGhostRise;
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
			sprite_index = spr_enemyShootyGhost;
			image_index = 0
		}
		//Switch to chasing state
		if !place_meeting(x, y, obj_collision) and sprite_index == spr_enemyShootyGhost{
			state = 0;
		}
		
	break
	
	
	case 0:
		// Chase the player
		if instance_exists(obj_player){
			dir = point_direction(x,y, obj_player.x, obj_player.y) + swirl
		}
		
		//Set the correct speed
		spd = chaseSpd;
		
		shootTimer++;
		
		
		//Transition to shooting stage
		if shootTimer > cooldownTime{
			//Go to shooting state
			state =1;
			
			//Reset timer so shooting state can use it too
			shootTimer = 0;
		}
			
			
		
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
		
		//Shoot a bullet
		shootTimer++;
		
		if shootTimer == 1{
			bulletInst = instance_create_depth(x + bulletXoff*face, y + bulletYoff, depth, obj_enemyBullet2)
		}
		
		//Keep the bullet in the zombie's hands
		if shootTimer <= windupTime && instance_exists(bulletInst){
			bulletInst.x = x + bulletXoff*face;
			bulletInst.y = y + bulletYoff;
		}
		
		//Shoot the bullet after the windup
		if shootTimer == windupTime && instance_exists(bulletInst){
			//Set the bullet state to 1 (shooting)
			bulletInst.state = 1;
			audio_play_sound(ghostShoot, 0, 0);
		}
		
		//Recover and return to chasing theplayer
		if shootTimer > windupTime + recoverTime{
			// Go back to chasing the player
			state = 0;
			
			//Reset the timer back to 0
			shootTimer = 0;
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
