/// @description Insert description here
// You can write your code in this editor
if state = States.Damaged {
	hspeed = 0
	vspeed = 0
	return;
}
if (state != States.Attacking) {
var inputVect_x = (keyboard_check(vk_right)-keyboard_check(vk_left)),
	inputVect_y = (keyboard_check(vk_down)-keyboard_check(vk_up)),
	speedSpeed = walkSpeed
		
hspeed = inputVect_x * speedSpeed 

vspeed = inputVect_y * speedSpeed
}