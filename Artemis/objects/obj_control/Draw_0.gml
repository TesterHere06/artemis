/// @description Draw database
draw_set_font(Joystix_small);
if data == -1
{
	draw_text(16, 16, "Loading...");
}
else{
	draw_text(16,16, "Highscores:");
	
	for (var i=0; i <array_length(data); i++;){
		var _doc = data[i];
		draw_text(16, 48 + (32 * i), $"{_doc.name}: {_doc.score}");
	}
}
