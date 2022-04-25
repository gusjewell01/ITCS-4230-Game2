//enemy faces player always
EnemyFace()

switch (state){
	case ENEMYSTATE.FREE:
	AI_type();
	break;
	case ENEMYSTATE.ATTACK:
	if(cooldown <= 0 and ready){
		sprite_index = spr_tony_attack
		if (obj_leo.x - x > 0) {
			instance_create_layer(x+40, y, "Bullets", obj_tony_bullet)
			audio_play_sound(snd_gunshot, 1, 0)
			cooldown = attackCD
		} else {
			instance_create_layer(x-40, y, "Bullets", obj_tony_bullet)
			audio_play_sound(snd_gunshot, 1, 0)
			cooldown = attackCD
		}
	}
	if(sprite_index != spr_tony_attack){
		if(hspeed != 0 || vspeed != 0){
			sprite_index = spr_tony_walking
		} else {
			sprite_index = spr_tony_standing
		}
	}
	if(distance_to_object(obj_leo) > 150){
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