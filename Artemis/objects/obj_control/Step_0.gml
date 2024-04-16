/// @description Create and delete highscore docs

if keyboard_check_released(ord("N")){
	var _doc = json_stringify(
	{
		name: get_string("Name: ", ""),
		score: get_integer("Score:", 0)
	}
	);
	FirebaseFirestore(root).Set(_doc);
}

if keyboard_check_released(ord("L")) and data != -1 and array_length(data) > 0{
	var _doc = FirebaseFirestore(root).Child(data[0].id);
	_doc.Delete();
}