

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
	} else if (obj_leo.x - x < 0){
		image_xscale = 1
	}
	if(obj_tony.cooldown <= 0 and ready){
		ready = false
		if (obj_leo.x - x > 0) {
		image_xscale = -1
		instance_create_layer(x+20, y, "Bullets", obj_enemy_punch)
		alarm[0] = 100
		cooldown = attackCD
	} else {
		ready = false
		
		instance_create_layer(x-20, y, "Bullets", obj_enemy_punch)
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
	sprite_index = spr_tony_damaged
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