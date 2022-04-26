/// @description Insert description here
// You can write your code in this editor
EnemyFace()

switch (state){
	case ENEMYSTATE.FREE:
	AI_type();
	break;
	case ENEMYSTATE.ATTACK:
	if(obj_big_jim.cooldown <= 0 and ready){
		sprite_index = spr_big_jim_attack
		if (obj_leo.x - x > 0) {
			instance_create_layer(x+80, y+60, "Bullets", obj_jim_punch)
			cooldown = attackCD
			audio_play_sound(snd_ground_poung, 1, 0)
		} else {
			instance_create_layer(x-80, y+60, "Bullets", obj_jim_punch)
			cooldown = attackCD
			audio_play_sound(snd_ground_poung, 1, 0)
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
	instance_create_depth(x, y, -9999, obj_fade)
	break;
}
cooldown -= 1