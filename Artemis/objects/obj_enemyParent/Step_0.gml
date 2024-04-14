// recieve damage
if place_meeting(x, y, obj_damageEnemy){
	var _inst = instance_place(x, y, obj_damageEnemy);
	
	//Take damage from the specific instance
	hp -= _inst.damage;
	
	//tell the damage instance to destory itself
	_inst.destroy = true;
}

//death
if hp <= 0{
	instance_destroy();
}