// grab start position and direction/angle
if timer = 6 {
	x = obj_player.x;
	y = obj_player.y;

	direction = point_direction(obj_player.x, obj_player.y, obj_cursor.x, obj_cursor.y );
}

 #region // define how long the laser can get max plus when hitting something
var max_length = 1400;  // change if camera is bigger or smaller then 900
for (i = 0; i < max_length; i++ ) {

   xEnd = x + lengthdir_x(i, direction);
   yEnd = y + lengthdir_y(i, direction);
  
   length_laser = i;   // how long the laser is in the end
  
   // breaking point change here object to break to or add multiple breaking points
    if (collision_point(xEnd, yEnd, obj_collision,0,0 ) ) {
      
        part_particles_create(o_Particle_Setup.particleSystem, xEnd, yEnd, o_Particle_Setup.particleType_Hit_Blue, 1  );
        part_particles_create(o_Particle_Setup.particleSystem, xEnd, yEnd, o_Particle_Setup.particleType_Spark_Blue, 10  );
  
  
  
  
    break; // stops loop and sets new xEnd and yEnd values
    }
  
}  // end of for loop
#endregion


#region    collision  -> with global enemy to change its values (hp or something)

 if (instance_exists(obj_enemy1)) {

      // add
      if (refresh_hit == true) { refresh_hit = false;
    
      var _list = ds_list_create();
      var hits = collision_line_list(x,y, xEnd, yEnd, obj_enemy1, 0,0, _list,0 );
    
         if (hits > 0 ) {
        
               for (var k = 0; k < hits; ++k;) {
                  
                   _list[| k].hp = _list[| k].hp -1;
              
               }
        }
     ds_list_destroy(_list);

     } // end of refresh check
 }  // end of enemy exist check




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