EnemyFace()
/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_leo) < 100 && obj_leo.state != States.Damaged){
	direction = point_direction(x, y, obj_leo.x, obj_leo.y)
	speed = moveSpeed
	
	if(tracking == false){
		patrolPosX = x;
		patrolPosY = y;
		tracking = true;
		
	}
} else if(tracking == true) {
	direction = point_direction(x, y, patrolPosX, patrolPosY);
	speed = moveSpeed
}

if (distance_to_object(obj_leo) < 5) {
	chase = false;
	tracking = false;
}


if(chase == false){
	alarm[0] = 30
}

switch (state){
	case ENEMYSTATE.FREE:
	ZombieAI();

	break;
	case ENEMYSTATE.ATTACK:

	if(cooldown <= 0){
		cooldown = attackCD
		if (obj_leo.x - x > 0) {
			instance_create_layer(x+20, y, "Bullets", obj_enemy_punch)
			alarm[0] = 100
		} else {
			instance_create_layer(x-20, y, "Bullets", obj_enemy_punch)
			alarm[0] = 100
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
	sprite_index = spr_zombie_damaged
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