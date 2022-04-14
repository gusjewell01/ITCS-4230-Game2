// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TonyAI(){
	//free movement of enemy tony
	timeline_index = TonyMovement;
	timeline_speed = 1/20;
	timeline_running = true;
	timeline_loop = true;
	
	if(distance_to_object(obj_leo) < 200){
		state = ENEMYSTATE.ATTACK;
	}
	
	
}