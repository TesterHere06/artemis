draw_sprite_ext(sprite_index, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha);

//draw hp
var _healthPercent = hp / maxHp;
var _hpImage =_healthPercent * (sprite_get_number(spr_enemyHealthbar) - 1);