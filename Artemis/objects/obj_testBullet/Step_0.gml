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
	destroy = true;
}

//bullet out of range
if point_distance(xstart, ystart, x, y) > maxDist{
	destroy = true;	
}

//Destroy
if destroy == true{
	create_animated_vfx(spr_poof, x, y, depth)
	instance_destroy();
}