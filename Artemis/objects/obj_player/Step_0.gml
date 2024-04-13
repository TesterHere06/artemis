if keyboard_check(ord("A")) {
	x -= global.Speed + global.BonusSpeed
}
if keyboard_check(ord("D")) {
	x += global.Speed + global.BonusSpeed
}
if keyboard_check(ord("W")) {
	y -= global.Speed + global.BonusSpeed
}
if keyboard_check(ord("S")) {
	y += global.Speed + global.BonusSpeed
}
if keyboard_check(vk_shift) and global.Stamina and (keyboard_check(ord("A")) or keyboard_check(ord("W")) or keyboard_check(ord("D")) or keyboard_check(ord("S"))) > 0 {
	if global.BonusSpeed < 3 {
		global.BonusSpeed += 0.1;
	}
	global.Stamina -=1
} else {
	if global.BonusSpeed > 0 {
		global.BonusSpeed -= 0.5;
	} else global.BonusSpeed = 0
	if global.Stamina < global.MaxStamina {
		global.Stamina += 0.5;
	}
}