var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

var _border = 8;
var _hudX = _camX + _border;
var _hudY = _camY + _border;

var _enemyCountOffset = 12;
var _ecHudX = _hudX;
var _ecHudY = _hudY + _enemyCountOffset ;
//BG of kill count
draw_sprite(spr_killCount, 0, _ecHudX, _ecHudY);

//Draw the text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(Joystix_small);

//The current enemy kill count
draw_text(_ecHudX + 60, _ecHudY + 5, string(global.enemyKillCount));