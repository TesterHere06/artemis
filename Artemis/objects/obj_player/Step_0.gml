if global.BookOpen < 0.6 {
	global.CurrentCombo = "";
if !global.IsGamepad {
	var hor = (input_check("right") - input_check("left"));
	var ver = (input_check("down") - input_check("up"));
	if (hor != 0 and ver !=0) {
		global.DiagonalSpeed = 0.707;
	} else {
		global.DiagonalSpeed = 1;
	}
}
if global.IsGamepad {
	var hor = gamepad_axis_value(0, gp_axislh);
	var ver = gamepad_axis_value(0, gp_axislv);
	global.DiagonalSpeed = min( 1, sqrt( hor*hor + ver*ver ) ) / sqrt( hor*hor + ver*ver );
}

hspeed = hor * (global.PlayerSpeed + global.BonusSpeed) * global.DiagonalSpeed;
vspeed = ver * (global.PlayerSpeed + global.BonusSpeed) * global.DiagonalSpeed;
if x < global.cursor_x {image_xscale = 2}
else {image_xscale = -2};

if input_check("special") and global.Stamina > 0 and (input_check("left") or input_check("up") or input_check("down") or input_check("right")) > 0 {
	if global.BonusSpeed < 3 {
		global.BonusSpeed += 0.1;
	}
	global.Stamina -=1
} else {
	if global.BonusSpeed > 0 {
		global.BonusSpeed -= 0.5;
	} else global.BonusSpeed = 0
	if global.Stamina < global.MaxStamina {
		global.Stamina += 0.5;
	}
}
centerY = y + centerYoffset;
aimDir = point_direction(x, centerY, global.cursor_x, global.cursor_y);
if shootTimer > 0 {shootTimer-- };
if input_check_pressed("shoot") && shootTimer <= 0 {
	
	//Reset the time
	shootTimer = weapon.cooldown;
	
	// Create the bullet direction
	var _xOffset = lengthdir_x(weapon.length + weaponOffsetDist, aimDir);
	var _yOffset = lengthdir_y(weapon.length + weaponOffsetDist, aimDir);
	
	var _spread = weapon.spread;
	var _spreadDiv = _spread / max(weapon.bulletNum-1, 1);
	
	// Create the correct number of bullets
	for (var i = 0; i < weapon.bulletNum; i++){
		
		var _bulletInst = instance_create_depth(x + _xOffset, centerY + _yOffset, depth-100, weapon.bulletObj)
	
		//change bullet direction
		with(_bulletInst){
			dir = other.aimDir - _spread/2 + _spreadDiv*i;
		}
	}
}

// Check for collision before updating the player's position
if !place_meeting(x + hspeed, y, obj_collision) {
    x += hspeed;
}
if !place_meeting(x, y + vspeed, obj_collision) {
    y += vspeed;
}

// Adjust the player's horizontal and vertical speed based on collision
if place_meeting(x + hspeed, y, obj_collision) {
    // If there's a collision in the horizontal direction, set hspeed to 0
    hspeed = 0;
}
if place_meeting(x, y + vspeed, obj_collision) {
    // If there's a collision in the vertical direction, set vspeed to 0
    vspeed = 0;
}

} else {
	hspeed = 0;
	vspeed = 0;
	if input_check_pressed("spell_right") {
		global.CurrentCombo += "D";
	}
	if input_check_pressed("spell_left") {
		global.CurrentCombo += "A";
	}
	if input_check_pressed("spell_down") {
		global.CurrentCombo += "S"
	}
	if input_check_pressed("spell_up") {
		global.CurrentCombo += "W";
	}
}

if global.WeaponChanged > 0 {
	global.WeaponChanged --
} else weapon = global.WeaponList.revolver;