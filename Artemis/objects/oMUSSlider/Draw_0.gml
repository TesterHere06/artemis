draw_self();
draw_sprite_part(sprite_index,1,0,0,sprite_width*global.user_data.MUS,sprite_height,x,y-sprite_get_yoffset(sprite_index));
if !global.IsGamepad or GamepadSelected != 0{draw_sprite(sSliderButton,0,x+sprite_width*global.user_data.MUS,y)}
else {draw_sprite(sSliderButton,1,x+sprite_width*global.user_data.MUS,y)}