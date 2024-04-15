//spawn an enemy
timer++

//reset timer when enemy limits have been reached
if instance_number(obj_enemyParent) >= global.activeEnemyMax || global.totalEnemiesSpawned >= global.enemyRoomMax{
	timer = 0;
}

if timer >= spawnTime && !place_meeting(x, y + 16, obj_enemyParent){

	//Create an enemy
	var _inst = instance_create_depth(x, y, depth-100, obj_enemyShootingGhost);
	with(_inst){
		state = -1;
	}
	
	//Reset the timer
	timer =0
	
}