// grab start position and direction/angle
if timer = 6 {
	x = obj_player.x;
	y = obj_player.y;

	direction = point_direction(obj_player.x, obj_player.y, global.cursor_x, global.cursor_y );
}

 #region // define how long the laser can get max plus when hitting something
var max_length = 1400;  // change if camera is bigger or smaller then 900
for (i = 0; i < max_length; i++ ) {

   xEnd = x + lengthdir_x(i, direction);
   yEnd = y + lengthdir_y(i, direction);
  
   length_laser = i;   // how long the laser is in the end
  
   // breaking point change here object to break to or add multiple breaking points
    if (collision_point(xEnd, yEnd, obj_collision,0,0 ) ) {
    break; // stops loop and sets new xEnd and yEnd values
    }
  
}  // end of for loop
#endregion


#region    collision  -> with global enemy to change its values (hp or something)

if (instance_exists(obj_enemyParent)) {
    if (refresh_hit == true) {
        refresh_hit = false;

        var _list = ds_list_create();
        var hits = collision_line_list(x, y, xEnd, yEnd, obj_enemyParent, 0, 0, _list, 0);

        if (hits > 0) {
            show_debug_message("Laser collided with enemy!");
            for (var k = 0; k < hits; ++k) {
                var enemy_inst = _list[| k];
                enemy_inst.hp -= dmg; // Deal damage equal to 'dmg' variable

                if (enemy_inst.hp <= 0) {
                    instance_destroy(enemy_inst); // Destroy enemy instance if HP is zero or below
                }
            }
        }
        ds_list_destroy(_list);
    }
}






 //Memory save , "switch"
 if (refresh_hit == false) {
  refresh_hit_timer--;
  if (refresh_hit_timer <= 0) {   refresh_hit_timer = refresh_hit_time; refresh_hit = true;   }

}

timer -= 1
if timer <= 0 {
	instance_destroy()
}

#endregion