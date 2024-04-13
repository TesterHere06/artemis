if input_check_pressed("book"){
	BookWantsOpen = !BookWantsOpen
}

if BookWantsOpen and global.BookOpen < 1 {
	global.BookOpen += 0.1
} else {
	if !BookWantsOpen and global.BookOpen > 0 {
		global.BookOpen -= 0.1
	}
}
x = 1216;
y = 928 - global.BookOpen * 160;