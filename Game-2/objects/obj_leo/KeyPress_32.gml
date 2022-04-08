/// @description Insert description here
// You can write your code in this editor
if (ready) {
ready = false
sprite_index = spr_leo_attack
state = States.Attacking
vspeed = 0
hspeed = 0
instance_create_depth(x+(20 *image_xscale), y, 1, obj_punch)
}
alarm[0] = 15
alarm[1] = 30