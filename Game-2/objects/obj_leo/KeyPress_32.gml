/// @description Insert description here
// You can write your code in this editor
if (ready) {
	audio_play_sound(snd_punch_miss, 1, 0)
	image_speed = 1
	ready = false
	alarm[0] = 10
	alarm[1] = 30
	if (bat = true ) {
		sprite_index = spr_leo_bat_attack	
	} else {
		sprite_index = spr_leo_attack
	}
	state = States.Attacking
	vspeed = 0
	hspeed = 0
	instance_create_depth(x+(20 *image_xscale), y, 1, obj_punch)
}
if (bat == true) {
	alarm[0] = 20
}
