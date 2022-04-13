/// @description Insert description here
// You can write your code in this editor
rand = random_range(0,4)



dist = distance_to_object(obj_leo)

if (dist < 150 and ready = true) {
	ready = false
	sprite_index = spr_tony_attack
	instance_create_layer(x, y+60, "Instances", obj_bullet)
	alarm[0] = 30
	alarm[1] = 80
}
