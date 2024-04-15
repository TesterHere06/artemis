
// damage create event
function get_damaged_create(_hp = 10, _iframes = false){
	maxHp = _hp;
	hp = _hp;
	if _iframes == true{
		iframesTimer = 0;
		iframeNumber = 90
	}

if _iframes == false{
	//create the damage list
	damageList = ds_list_create();
}

}
	
//damage clean up event
function get_damaged_cleanup(){
	// DO NOT NEED IF USING IFRAMES
	//delete our damage list data structure to free memory
	ds_list_destroy(damageList);
}

//damage step event
function get_damaged(_damageObject, _iframes = false)
{
	//Special exit for ifram timer
	if _iframes == true && iframesTimer > 0{
		iframesTimer--;
		
		if iframesTimer mod 6 == 0{
			if image_alpha == 1{
				image_alpha = 0.5;
			}
			else{
				image_alpha = 1;
			}
		}
		
		exit;
	}
	
	//Make sure image flicking stops
	if _iframes == true{
		image_alpha =1;
	}
	
	// recieve damage
	if place_meeting(x, y, _damageObject)
	{
		//Getting a list of damage instances
		var _instList = ds_list_create();
		instance_place_list(x, y, _damageObject, _instList, false);
	
		//get the size of our list
		var _listSize = ds_list_size(_instList);
	
		//loop through the list
		var _hitConfirm = false;
		
		for (var i = 0; i < _listSize; i++)
		{
			//get a damage object instance from the list
			var _inst = ds_list_find_value(_instList, i);
		
			//check if this instance is already in the damage list
			if _iframes == true || ds_list_find_index(damageList, _inst) == -1
			{
				//add the new damage instance to the damage list
				if _iframes == false
				{
					ds_list_add(damageList, _inst);
				}		
				// take damage from specific instance
				hp -= _inst.damage;
				_hitConfirm = true;
				//tell the damage it has impacted
				_inst.hitConfirm = true;
				
				//Create impact visual
				if _inst.hitVFX == true
				{
				create_animated_vfx(spr_poof, _inst.x, _inst.y, _inst.depth-50)
				}
			}
		}
	
		//set iframes if we were hit
		if _iframes == true && _hitConfirm
		{
			iframesTimer = iframeNumber	
		}
	
		// free memory by destroying the list
		ds_list_destroy(_instList);
	}
		
	//clear the damage list of objects that don't exist anymore or aren't touching 
	if _iframes = false{
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
}




