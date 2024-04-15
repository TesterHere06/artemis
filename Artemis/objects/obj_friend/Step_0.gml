//State machine
switch(state){
	// Spawn in from grave
	case -1:

		sprite_index = spr_friendRise;

		if image_alpha >= 1{
			//set the right speed and direction
			spd = emergeSpd;
			dir = 270;
		}
		
		if image_index >= image_number - 1 {
			sprite_index = spr_friend;
			image_index = 0
			state = 0;
		}

	break
	
	
	case 0:
		// Chase the player
		if instance_exists(obj_enemyParent){
			dir = (dir*4 + point_direction(x,y, instance_nearest(x, y, obj_enemyParent).x, instance_nearest(x, y, obj_enemyParent).y) + swirl) / 5
		}
		
		if healthstuff < 60 {
			swirl = choose(-45,45)
			state = 1
		}
		
		//Set the correct speed
		if place_meeting(x, y, obj_enemyParent) {
			spd = 0
		} else spd = chaseSpd;
		
		if distance_to_object(obj_enemyParent) > 300 state = 3
		
	break;

	case 1:

		// Chase the player
		if instance_exists(obj_player){
			dir = (dir*4 + point_direction(x,y, obj_player.x, obj_player.y) + swirl) /5
		}
		
		//Set the correct speed
		spd = chaseSpd;
		
		if healthstuff > 140 {
			swirl = choose(-30,30)
			state = 0
		}
		
	break;
	
	case 2:
		healthstuff --
		image_alpha = 1 + healthstuff*0.01
		if healthstuff < -1 instance_destroy()
	break;
	
	case 3:
		
		// Chase the player
		if instance_exists(obj_player){
			dir = point_direction(x,y, obj_player.x, obj_player.y)
		}
		
		//Set the correct speed
		spd = chaseSpd;
		
		if distance_to_object(obj_player) < 20 {
			swirl = choose(-30,30)
			state = 0
		}
		
	break;
	
}

if distance_to_object(obj_player) < 20 {
	healthstuff += 1;
}
if healthstuff > 160 {
	healthstuff = 160;
}

if place_meeting(x, y, obj_damagePlayer) {
	healthstuff --
}


//getting the speeds
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

//get correct face
if dir > 90 && dir < 270{
	image_xscale = -2;
}
else{
	image_xscale = 2;
}


//moving	
x += xspd;
y += yspd

//Set the depth
depth = -y;


if healthstuff < 1 and state != 0{
	state = 2
}
// Inherit the parent event
// Getting damaged and dying