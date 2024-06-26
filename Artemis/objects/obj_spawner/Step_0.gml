//spawn an enemy
timer++
depth = -y;
if diff <= 30{
	global.DiffText = "Easy"
}
else if diff <= 40{
	global.DiffText = "Medium"
}
else if diff <= 70{
	global.DiffText = "Hard"
}
else{
	global.DiffText = "Hard+"
}

//reset timer when enemy limits have been reached
if instance_number(obj_enemyParent) >= global.activeEnemyMax{
	timer = 0;
}

if timer >= spawnTime && !place_meeting(x, y + 16, obj_enemyParent){

	//Create an enemy
	if diff <= 30{
		global.activeEnemyMax = 10
		spawnTime = 4*60;
		var _enemyType = choose("medium", "common")
		
		if _enemyType = "medium"{
			var _enemy = choose("ghost", "skeleton", "skeleton")
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
	
	else if diff <= 40{
		global.activeEnemyMax = 25
		spawnTime = 7*60;
		var _enemyType = choose("medium", "medium", "medium", "hard", "common")
		
		if _enemyType = "medium"{
			var _enemy = choose("ghost", "skeleton", "skeleton")
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
		else if _enemyType = "common"{
			var _inst = instance_create_depth(x, y, depth-100, obj_enemyGhost);
			with(_inst){
			state = -1;
			}
			var _inst = instance_create_depth(x, y-20, depth-100, obj_enemyGhost);
			with(_inst){
			state = -1;
			}
		}
		else{
			var _enemy = choose("charger", "skeleton")
			if _enemy = "skeleton"{
				var _inst = instance_create_depth(x, y, depth-100, obj_enemyShootingSkeleton);
				with(_inst){
					state = -1;
				}
			}
			if _enemy = "charger"{
				var _inst = instance_create_depth(x, y, depth-100, obj_enemyChargingSkeleton);
				with(_inst){
					state = -1;
				}
			}
		}
		diff++;
	}
		
	else if diff <= 70{
		global.activeEnemyMax = 40
		spawnTime = 8*60;
		var _enemyType = choose("medium", "medium", "hard", "common")
		
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
		else if _enemyType = "common"{
			var _inst = instance_create_depth(x, y, depth-100, obj_enemyGhost);
			with(_inst){
			state = -1;
			}
			var _inst = instance_create_depth(x, y-20, depth-100, obj_enemyGhost);
			with(_inst){
			state = -1;
			}
			var _inst = instance_create_depth(x, y-40, depth-100, obj_enemyGhost);
			with(_inst){
			state = -1;
			}
		}
		else{
			var _enemy = choose("charger", "skeleton")
			if _enemy = "skeleton"{
				var _inst = instance_create_depth(x, y, depth-100, obj_enemyShootingSkeleton);
				with(_inst){
					state = -1;
				}
			}
			if _enemy = "charger"{
				var _inst = instance_create_depth(x, y, depth-100, obj_enemyChargingSkeleton);
				with(_inst){
					state = -1;
				}
			}
		}
		diff++;
	}
	
	else{
		var _enemyType = choose("hard", "hard", "medium", "medium", "common")
		
		if _enemyType = "medium"{
			var _enemy = choose("ghost", "skeleton")
			if _enemy = "ghost"{
				var _inst = instance_create_depth(x, y, depth-100, obj_enemyShootingGhost);
				with(_inst){
					state = -1;
				}
				var _inst = instance_create_depth(x, y-20, depth-100, obj_enemyShootingGhost);
				with(_inst){
					state = -1;
				}
			}
			if _enemy = "skeleton"{
				var _inst = instance_create_depth(x, y, depth-100, obj_enemySkeleton);
				with(_inst){
					state = -1;
				}
				var _inst = instance_create_depth(x, y-20, depth-100, obj_enemySkeleton);
				with(_inst){
					state = -1;
				}
			}
		}
		else if _enemyType = "common"{
			var _inst = instance_create_depth(x, y, depth-100, obj_enemyGhost);
			with(_inst){
			state = -1;
			}
			var _inst = instance_create_depth(x, y-20, depth-100, obj_enemyGhost);
			with(_inst){
			state = -1;
			}
			var _inst = instance_create_depth(x, y-40, depth-100, obj_enemyGhost);
			with(_inst){
			state = -1;
			}
		}
		else{
			var _enemy = choose("charger", "skeleton")
			if _enemy = "skeleton"{
				var _inst = instance_create_depth(x, y, depth-100, obj_enemyShootingSkeleton);
				with(_inst){
					state = -1;
				}
			}
			if _enemy = "charger"{
				var _inst = instance_create_depth(x, y, depth-100, obj_enemyChargingSkeleton);
				with(_inst){
					state = -1;
				}
			}
		}
		diff++;
	}
	//Reset the timer
	timer =0
	
}
