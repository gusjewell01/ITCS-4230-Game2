	
	if (obj_leo.x - x > 0) {
			image_xscale = -3
	} else {
		image_xscale = 3
	}
	switch (state){
	case ENEMYSTATE.FREE:
	DragonAI();
	break;
	case ENEMYSTATE.ATTACK:

	if(obj_dragon.cooldown <= 0 and ready){
		sprite_index = spr_dragon_attacking
		ready = false
		if (obj_leo.x - x > 0) {
			audio_play_sound(snd_fireball, 1, 0)
			instance_create_layer(x+220, y+40, "Bullets", obj_fireball)
			alarm[0] = 100
			cooldown = attackCD
		} else {
			audio_play_sound(snd_fireball, 1, 0)
			instance_create_layer(x-220, y+40, "Bullets", obj_fireball)
			alarm[0] = 100
			cooldown = attackCD
		}
	}
	if(distance_to_object(obj_leo) > 500){
		state = ENEMYSTATE.FREE
	}
	
	break;
	case ENEMYSTATE.HIT:
	//implement if we want to have enemies have hp, will be a bit more work
	vspeed = 0
	hspeed = 0
	sprite_index = spr_dragon_damaged
	if (stateCD == true) {
		stateCD = false
	alarm[3] = 20
	}
	break;
	case ENEMYSTATE.DEAD:
	//needed for if we have hp on enemy characters
	sprite_index = spr_dragon_dying
	
	if (alive = true) {
		alive = false
	alarm[1] = 200
	instance_create_depth(0,0, -9999, obj_fade_out)
	}
	break;
}
cooldown -= 1