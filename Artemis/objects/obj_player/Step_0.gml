var hor = (input_check("right") - input_check("left"));
var ver = (input_check("down") - input_check("up"));
if (hor != 0 and ver !=0) {
global.DiagonalSpeed = 0.707;
} else {
global.DiagonalSpeed = 1;
}

hspeed = hor * (global.PlayerSpeed + global.BonusSpeed) * global.DiagonalSpeed;
vspeed = ver * (global.PlayerSpeed + global.BonusSpeed) * global.DiagonalSpeed;
if x < obj_cursor.x {image_xscale = 1}
else {image_xscale = -1};

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

// laser beam create
if input_check_pressed("shoot") {    
    if !(instance_exists(obj_bullet)) {
    instance_create_depth(mouse_x , mouse_y, 0, obj_bullet );
	}
}

if place_meeting(x, y, obj_collision){
 
}