// recieve damage
if place_meeting(x, y, obj_damageEnemy){
	//Getting a list of damage instances
	var _instList = ds_list_create();
	instance_place_list(x, y, obj_damageEnemy, _instList, false);
	
	//get the size of our list
	var _listSize = ds_list_size(_instList);
	
	for (var i = 0; i < _listSize; i++){
		//get a damage object instance from the list
		var _inst = ds_list_find_value(_instList, i);	
		
		// take damage from specific instance
		hp -= _inst.damage;
		
		//tell the damage instance to destroy itself
		_inst.destroy = true;
	}
	// free memory by destroying the list
	ds_list_destroy(_instList);
}

//death
if hp <= 0{
	instance_destroy();
}