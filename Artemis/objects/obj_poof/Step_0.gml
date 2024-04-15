x = obj_player.x + randx
y = obj_player.y + randy - sin(Anim)*60
Anim += 0.05
if Anim > 1.5
	instance_destroy()