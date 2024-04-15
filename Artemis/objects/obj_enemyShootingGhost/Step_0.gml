//State machine
switch(state){
	case 0:
		// Chase the player
		if instance_exists(obj_player){
			dir = point_direction(x,y, obj_player.x, obj_player.y)
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
			dir = point_direction(x,y, obj_player.x, obj_player.y)
		}
		
		//Set the correct speed
		spd = 0;
		
		//Stop animatting / manually set the image index
		image_index = 0;
		
		//Shoot a bullet
		shootTimer++;
		
		if shootTimer == 1{
			bulletInst = instance_create_depth(x + bulletXoff*face, y + bulletYoff, depth, obj_enemyBullet)
		}
		//Shoot the bullet after the windup
		if shootTimer == windupTime && instance_exists(bulletInst){
			//Set the bullet state to 1 (shooting)
			bulletInst.state = 1;	
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

