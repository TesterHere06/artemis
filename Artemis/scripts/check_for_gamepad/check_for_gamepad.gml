// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_for_gamepad(){
	if !global.IsGamepad {
		for (var i = gp_face1; i < gp_axisrv; i++) {
			if ( gamepad_button_check(0,i) ) {
				global.IsGamepad = true;
				return true
			};
		}
	return false
	} else if (keyboard_check(vk_anykey) or mouse_check_button(mb_any)) {
	global.IsGamepad = false;
	}
}