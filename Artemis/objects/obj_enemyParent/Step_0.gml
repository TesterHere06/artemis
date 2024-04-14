// recieve damage
get_damaged(obj_damageEnemy)
//death
if hp <= 0{
	instance_destroy();
	
	//boom vfx
	create_animated_vfx(spr_death, x, y, depth);
}