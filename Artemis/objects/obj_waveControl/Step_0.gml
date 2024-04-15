if instance_number(obj_enemyGhost) == 0 && instance_number(obj_enemyShootingGhost) == 0 && instance_number(obj_enemySkeleton) == 0 && instance_number(obj_enemyShootingSkeleton) == 0 {
    // All enemies defeated, start next wave
    current_wave++;
    total_enemies_spawned = 0;
    enemies_per_wave += 2; // Increase difficulty by adding more enemies per wave
    rare_enemy_chance += 0.01; // Increase chance for rare enemy spawn
    spawn_enemies();
}