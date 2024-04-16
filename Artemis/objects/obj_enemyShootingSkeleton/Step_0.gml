var _wallCollisions = false
var _getDamage = true;
var _enemyCollisions = true;

//State machine
switch(state){
	// Spawn in from grave
	case -1:
		//Enterance animation
		if enterAnim {
			sprite_index = spr_enemyShootySkeletonRise;
		}
		
		//Walking out
		_wallCollisions = false;
		_getDamage = false;
		if image_alpha >= 1{
			//set the right speed and direction
			spd = emergeSpd;
			dir = 270;
		}
		
		if image_index >= image_number - 1 {
			sprite_index = spr_enemyShootySkeleton;
			image_index = 0
		}
		//Switch to chasing state
		if !place_meeting(x, y, obj_collision) and sprite_index == spr_enemyShootySkeleton{
			state = 0;
		}
		
	break
	
	
	case 0:
		_wallCollisions = true;
		// Chase the player
		if instance_exists(obj_player){
			dir = point_direction(x,y, obj_player.x, obj_player.y)
		}
		
		//Set the correct speed
		spd = 0;
		
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
			bulletamount --
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
		}
		
		//Recover and return to chasing theplayer
		if shootTimer > windupTime + recoverTime{
			// Go back to chasing the player
			state = 0;
			
			//Reset the timer back to 0
			shootTimer = 0;
		}
		
		if bulletamount <=0 {
			state = 2
			strafe = choose(-90,90)
		}
	
	break;
	
	case 2:
		
		if instance_exists(obj_player){
			dir = point_direction(x,y, obj_player.x, obj_player.y) + strafe
		}
		
		//Set the correct speed
		spd = chaseSpd;
		
		shootTimer++;
		if shootTimer == windupTime && instance_exists(bulletInst){
			//Set the bullet state to 1 (shooting)
			bulletInst.state = 1;	
		}
		
		if shootTimer > windupTime + recoverTime{
			shootTimer = 0;
		}
		
		bulletamount ++
		
		if bulletamount >= 160 {
			bulletamount = 16;
			state = choose(1,3);
		}
		
	break;
	
	case 3:
		
		if instance_exists(obj_player){
			dir = point_direction(x,y, obj_player.x, obj_player.y) + random_range(-10,10)
		}
		
		//Set the correct speed
		spd = -chaseSpd/4;
		
		//Stop animatting / manually set the image index
		image_index = 0;
		
		//Shoot a bullet
		shootTimer++;
		
		if shootTimer == 1{
			bulletInst = instance_create_depth(x + bulletXoff*face, y + bulletYoff, depth, obj_enemyBullet)
			bulletamount --
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
		}
		
		//Recover and return to chasing theplayer
		if shootTimer > windupTime + recoverTime + cooldownTime*2 {
			shootTimer = 0;
		}
		
		if bulletamount <=0 {
			state = 2;
			strafe = choose(-90,90)
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

// Inherit the parent event
// Getting damaged and dying
if _getDamage == true{
	event_inherited();
}
