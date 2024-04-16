/// move
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);
	
x += xspd;
y += yspd;

//Cleanup


//hit confirm destroy
if hitConfirm == true && enemyDestroy == true {destroy = true;}

//Collision
if place_meeting(x, y, obj_collision){
	create_animated_vfx(spr_poof, x, y, depth)
	destroy = true;
}

//bullet out of range
if point_distance(xstart, ystart, x, y) > maxDist{
	destroy = true;	
}

//Destroy
if destroy == true{
	audio_play_sound(ammoWallhit, 1, false);
	instance_destroy();
}

if image_index = 3 image_speed = 0