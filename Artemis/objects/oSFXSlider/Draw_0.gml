draw_self();
draw_sprite_part(sprite_index,1,0,0,sprite_width*global.user_data.SFX,sprite_height,x,y-sprite_get_yoffset(sprite_index));
if !global.IsGamepad or GamepadSelected != 1{draw_sprite(sSliderButton,0,x+sprite_width*global.user_data.SFX,y);}
else {draw_sprite(sSliderButton,1,x+sprite_width*global.user_data.SFX,y);}