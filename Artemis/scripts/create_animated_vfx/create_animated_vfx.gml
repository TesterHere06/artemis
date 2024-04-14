function create_animated_vfx(_sprite, _x, _y, _depth, _rot = 0){
	with(instance_create_depth(_x, _y, _depth, obj_VFX)){
		sprite_index = _sprite;
		image_angle = _rot;
	}
}