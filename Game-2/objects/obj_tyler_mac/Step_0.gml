/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
switch (state){
	case ENEMYSTATE.FREE:
	AI_type();
	if (obj_leo.x - x > 0) {
		image_xscale = -1
	}
	break;
	case ENEMYSTATE.ATTACK:
	if (obj_leo.x - x > 0) {
		image_xscale = -1
	}
	if(obj_tyler_mac.cooldown <= 0){
		if (obj_leo.x - x > 0) {
		image_xscale = -1
		
		cooldown = attackCD
		alarm[0] = 20
	} else {
		sprite_index = spr_tyler_mac_attack
		
		cooldown = attackCD
		alarm[1] = 20
	}
	}
	if(distance_to_object(obj_leo) > 50){
		state = ENEMYSTATE.FREE
	}
	
	break;
	case ENEMYSTATE.HIT:
	vspeed = 0
	hspeed = 0
	sprite_index = spr_tyler_mac_damaged
	if (stateCD = true) {
		stateCD = false
		alarm[3] = 20
	}
	 
	break;
	case ENEMYSTATE.DEAD:
	instance_destroy();
	//needed for if we have hp on enemy characters
	break;
}
cooldown -= 1