// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DragonAI(){
	//free movement of enemy tony
	
	
	if(distance_to_object(obj_leo) < 150){
		state = ENEMYSTATE.ATTACK;
	}
	if(vspeed != 0 || hspeed != 0){
		sprite_index = spr_dragon_walking
	} else {
		sprite_index = spr_dragon_standing
	}
	
	
}