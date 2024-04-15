// recieve damage
get_damaged(obj_damageEnemy)
//death
if hp <= 0{
	//add to total kill count
	global.enemyKillCount++;
	instance_destroy();
	instance_create_depth(x, y, depth, obj_soul)
	if place_meeting(x, y, obj_damagingarea) instance_create_depth(x + random_range(-10,10), y + random_range(-10,10), depth, obj_soul)
	//boom vfx
	create_animated_vfx(spr_death, x, y, depth);
}