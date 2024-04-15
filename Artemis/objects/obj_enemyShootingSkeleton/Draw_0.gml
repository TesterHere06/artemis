draw_sprite_ext(sprite_index, image_index, x, y, face, image_yscale, image_angle + sin(Anim/28)*6, image_blend, image_alpha);
Anim ++
if Anim > 173.6 Anim = 0

//draw hp
var _healthPercent = hp / maxHp;
var _hpImage =_healthPercent * (sprite_get_number(spr_enemyHealthbar) - 1);
draw_sprite(spr_enemyHealthbar, _hpImage, x, y - sprite_height +9);