//damage step event
function get_damaged(_damageObject){
	// recieve damage
if place_meeting(x, y, _damageObject){
	//Getting a list of damage instances
	var _instList = ds_list_create();
	instance_place_list(x, y, _damageObject, _instList, false);
	
	//get the size of our list
	var _listSize = ds_list_size(_instList);
	
	for (var i = 0; i < _listSize; i++){
		//get a damage object instance from the list
		var _inst = ds_list_find_value(_instList, i);
		
		//check if this instance is already in the damage list
		if ds_list_find_index(damageList, _inst) == -1
		{
			//add the new damage instance to the damage list
			ds_list_add(damageList, _inst);
			
			// take damage from specific instance
			hp -= _inst.damage;
			//tell the damage it has impacted
			_inst.hitConfirm = true;
		}
	}
	// free memory by destroying the list
	ds_list_destroy(_instList);
}

//clear the damage list of objects that don't exist anymore or aren't touching 
var _damageListSize = ds_list_size(damageList)
for (var i = 0; i  < _damageListSize; i++){
	//if not touching the damage instance anymore remove from list and set the loop back to 1
	var _inst = ds_list_find_value(damageList, i);
	if !instance_exists(_inst) || !place_meeting(x, y, _inst){
		ds_list_delete(damageList, i);
		i--;
		_damageListSize--;
	}
}
}

// damage create event
function get_damaged_create(_hp = 10){
hp = _hp;

//create the damage list
damageList = ds_list_create();
}
	
//damage clean up event
function get_damaged_cleanup(){
	//delete our damage list data structure to free memory
	ds_list_destroy(damageList);
}