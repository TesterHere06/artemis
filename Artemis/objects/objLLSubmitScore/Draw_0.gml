draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x + -64, y + 0, string("Current score: ") + string(simpleLeaderboardScore));

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(x + 0, y + 120, string("Press 'SPACE' to upload score\n[Score will only be updated if it is higher than the previous score]") + "");