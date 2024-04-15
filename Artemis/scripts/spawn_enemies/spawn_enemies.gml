function spawn_enemies(){
    var i;
    for (i = 0; i < enemies_per_wave; i++) {
        var spawn_x, spawn_y;
        var spawner_id = irandom_range(1, 3); // Select a random spawner ID
        var rare_roll = random(1); // Roll for rare enemy spawn
        
        // Determine spawn position based on the selected spawner
        switch (spawner_id) {
            case 1:
                spawn_x = obj_spawner1.x + random_range(1, 120);
                spawn_y = obj_spawner1.y + random_range(1, 120);
                break;
            case 2:
                spawn_x = obj_spawner2.x + random_range(1, 120);
                spawn_y = obj_spawner2.y + random_range(1, 120);
                break;
            case 3:
                spawn_x = obj_spawner3.x + random_range(1, 120);
                spawn_y = obj_spawner3.y + random_range(1, 120);
                break;
        }
		

        var collision = false;
        var enemy_types = [obj_enemyGhost, obj_enemySkeleton, obj_enemyShootingSkeleton, obj_enemyShootingGhost]; // List of enemy object types
        for (var j = 0; j < array_length_1d(enemy_types); j++) {
            if (place_meeting(spawn_x, spawn_y, enemy_types[j])) {
                collision = true;
                break;
            }
        }
		
		// Adjust spawn position until no collision occurs
        while (collision) {
            spawn_x += sign(obj_spawner1.x - spawn_x) * 15; // Move away from spawner
            spawn_y += sign(obj_spawner1.y - spawn_y) * 15; // Move away from spawner
            
            // Perform collision check for adjusted position
            collision = false;
            for (var k = 0; k < array_length_1d(enemy_types); k++) {
                if (place_meeting(spawn_x, spawn_y, enemy_types[k])) {
                    collision = true;
                    break;
                }
            }
        }
        
        if (rare_roll < rare_enemy_chance) {
            // Spawn a rare enemy
            var rare_enemy_type = choose(obj_enemyShootingSkeleton, obj_enemySkeleton); // Choose from different rare enemy types
            instance_create_depth(spawn_x, spawn_y, -100, rare_enemy_type);
        } else {
            // Spawn a common enemy
            var enemy_type = choose(obj_enemyGhost, obj_enemyShootingGhost); // Choose from different common enemy types
			if enemy_type = obj_enemyGhost{
				instance_create_depth(spawn_x + 50, spawn_y + 100, -100, enemy_type);
				instance_create_depth(spawn_x - 50, spawn_y - 100, -100, enemy_type);
			}
			else{
				instance_create_depth(spawn_x, spawn_y, -100, enemy_type);
			}
				
        }
        
        total_enemies_spawned++;
    }
}