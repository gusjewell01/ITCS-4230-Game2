/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
switch (state){
	case ENEMYSTATE.FREE:
	AI_type();

	break;
	case ENEMYSTATE.ATTACK:
	if(obj_tony.cooldown <= 0){
		sprite_index = spr_tony_attack
		instance_create_layer(x-40, y, "Instances", obj_tony_bullet)
		cooldown = attackCD
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