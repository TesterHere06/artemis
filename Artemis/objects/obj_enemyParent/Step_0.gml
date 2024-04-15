// recieve damage
get_damaged(obj_damageEnemy)
//death
if hp <= 0{
	instance_destroy();
	instance_create_depth(x, y, depth, obj_soul)
	//boom vfx
	create_animated_vfx(spr_death, x, y, depth);
}