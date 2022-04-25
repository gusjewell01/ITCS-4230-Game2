/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
EnemyFace()
switch (state){
	case ENEMYSTATE.FREE:
	AI_type();
	break;
	case ENEMYSTATE.ATTACK:
	vspeed = 0
	hspeed = 0
	if(cooldown <= 0){
		sprite_index = spr_tyler_mac_attack
		if (obj_leo.x - x > 0) {
		cooldown = attackCD
		alarm[0] = 25
	} else {
		cooldown = attackCD
		alarm[1] = 25
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