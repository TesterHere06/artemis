/// @description Insert description here
timer++;

if timer >= spawnTime
{
	//create an enemy
	instance_create_depth(x, y, depth-1, obj_enemyGhost);
	
	//reset timer
	timer = 0;
}