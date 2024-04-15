//spawn an enemy
timer ++

if timer >= spawnTime{

	//Create an enemy
	var _inst = instance_create_depth(x, y, depth-1, obj_enemySkeleton);
	with(_inst){
		
		image_alpha = 0;
		state = -1;
		
	}
	
	//Reset the timer
	timer =0
	
}