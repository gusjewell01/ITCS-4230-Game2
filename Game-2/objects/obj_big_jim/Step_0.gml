/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
switch (state){
	case ENEMYSTATE.FREE:
	AI_type();
	if (obj_leo.x - x > 0) {
		image_xscale = -1
	} else {
	image_xscale = 1
	}
	break;
	case ENEMYSTATE.ATTACK:
	if (obj_leo.x - x > 0) {
		image_xscale = -1
	} else {
	image_xscale = 1
	}
	if(obj_big_jim.cooldown <= 0 and ready){
		if (obj_leo.x - x > 0) {
			ready = false
			sprite_index = spr_big_jim_attack
		image_xscale = -1
		alarm[1] = 10
		alarm[0] = 100
		cooldown = attackCD
	} else {
		ready = false
		sprite_index = spr_big_jim_attack
		alarm[1] = 10
		instance_create_layer(x-80, y+60, "Bullets", obj_jim_punch)
		alarm[0] = 100
		cooldown = attackCD
	}
	}
	if(distance_to_object(obj_leo) > 200){
		state = ENEMYSTATE.FREE
	}
	
	break;
	case ENEMYSTATE.HIT:
	//implement if we want to have enemies have hp, will be a bit more work

	vspeed = 0
	hspeed = 0
	sprite_index = spr_big_jim_damaged
	if (stateCD = true) {
		stateCD = false
	alarm[3] = 20
	}
	break;
	case ENEMYSTATE.DEAD:
	//needed for if we have hp on enemy characters
	instance_destroy()
	break;
}
cooldown -= 1