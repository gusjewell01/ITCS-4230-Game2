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
	}
	break;
	case ENEMYSTATE.ATTACK:
	if (obj_leo.x - x > 0) {
		image_xscale = -1
	}
	if(obj_big_jim.cooldown <= 0){
		if (obj_leo.x - x > 0) {
		image_xscale = -1
		instance_create_layer(x+20, y, "Bullets", obj_enemy_punch)
		cooldown = attackCD
	} else {
		sprite_index = spr_big_jim_attack
		instance_create_layer(x-20, y, "Bullets", obj_enemy_punch)
		cooldown = attackCD
	}
	}
	if(distance_to_object(obj_leo) > 200){
		state = ENEMYSTATE.FREE
	}
	
	break;
	case ENEMYSTATE.HIT:
	//implement if we want to have enemies have hp, will be a bit more work
	break;
	case ENEMYSTATE.DEAD:
	//needed for if we have hp on enemy characters
	break;
}
cooldown -= 1