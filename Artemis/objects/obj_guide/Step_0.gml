CameraPositon()
x += 1600 - 408;
y += 1280 - global.BookOpen * 188;
if !global.IsGamepad {
	image_index = 0;
} else {
	image_index = 1;
}