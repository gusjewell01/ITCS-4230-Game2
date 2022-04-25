/// @description Insert description here
// You can write your code in this editor
if(state == States.Damaged){
	return;
}
	if hspeed != 0 and (state = States.Regular or state = States.Walking){
		image_speed = 1
		 if (bat == true) {
			 
		sprite_index = spr_leo_bat_walking
		
		 } else {
			sprite_index = spr_leo_walking	 
		 }
	
		image_xscale =  sign(hspeed)
	}
	if vspeed != 0 and (state = States.Regular or state = States.Walking){
		image_speed = 1
		if (bat == true) {
			sprite_index = spr_leo_bat_walking
		} else {
			sprite_index = spr_leo_walking
		}

	}


if (global.leo_health <= 0) {
	room_goto(Lose)
}


	


if vspeed = 0 and hspeed = 0 and state != States.Attacking {
	
	if (bat == true) {
		sprite_index = spr_leo_bat_walking
		image_speed = 0
		state = States.Regular
	} else {
	sprite_index = spr_leo_standing
	state = States.Regular
	}
}