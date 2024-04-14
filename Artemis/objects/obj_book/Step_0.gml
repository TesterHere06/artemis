if input_check_pressed("book"){
	global.BookWantsOpen = !global.BookWantsOpen
}

if global.BookWantsOpen and global.BookOpen < 1 {
	global.BookOpen += 0.1
} else {
	if !global.BookWantsOpen and global.BookOpen > 0 {
		global.BookOpen -= 0.1
	}
}
CameraPositon()
x += 1600;
y += 1248 - global.BookOpen * 120;