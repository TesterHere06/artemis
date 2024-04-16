CameraPositon()
x += 1820 + global.BookOpen * 188;
y += 1000;
if !global.IsGamepad {
	image_index = 0;
} else {
	image_index = 1;
}

if global.BookOpen >= 1 {
	instance_destroy()
}