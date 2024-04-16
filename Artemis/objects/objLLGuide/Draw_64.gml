draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_colour($FFFFFFFF & $ffffff);
var l71B8A443_0=($FFFFFFFF >> 24);
draw_set_alpha(l71B8A443_0 / $ff);

draw_text(room_width/2, 20,  + string("Left mouse button to go forward, right mouse button to go backward"));

draw_text(room_width/2, 40,  + string(string(image_index)+"/"+string(sprite_get_number(sprLLGuidePages)-1)));