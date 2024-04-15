//spawn an enemy
timer++
depth = -y;


//reset timer when enemy limits have been reached
if instance_number(obj_enemyParent) >= global.activeEnemyMax{
	timer = 0;
}

if timer >= spawnTime && !place_meeting(x, y + 16, obj_enemyParent){

	//Create an enemy
	if diff <= 30{
		var _enemyType = choose("medium", "common")
		
		if _enemyType = "medium"{
			var _enemy = choose("ghost", "skeleton")
			if _enemy = "ghost"{
				var _inst = instance_create_depth(x, y, depth-100, obj_enemyShootingGhost);
				with(_inst){
					state = -1;
				}
			}
			if _enemy = "skeleton"{
				var _inst = instance_create_depth(x, y, depth-100, obj_enemySkeleton);
				with(_inst){
					state = -1;
				}
			}
		}
		else{
			var _inst = instance_create_depth(x, y, depth-100, obj_enemyGhost);
			with(_inst){
			state = -1;
			}
		}
		diff++;
	}
	
	//Reset the timer
	timer =0
	
}