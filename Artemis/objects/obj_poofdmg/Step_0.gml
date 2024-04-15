image_angle += rand
Anim += 0.05
if Anim > 2 {
	instance_destroy()
} else if Anim > 1 {
	image_alpha = 2 - Anim
} else image_alpha = Anim