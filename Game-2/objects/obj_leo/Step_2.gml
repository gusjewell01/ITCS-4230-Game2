/// @description Insert description here
// You can write your code in this editor

	if hspeed != 0 and state != States.Attacking{
		
		sprite_index = spr_leo_walking
	
		image_xscale = sign(hspeed)
	}
	if vspeed != 0 and state != States.Attacking{
		
		sprite_index = spr_leo_walking
	

	}


if (leo_health <= 0) {
	room_goto(Lose)
}
	


if vspeed = 0 and hspeed = 0 and state != States.Attacking {
	sprite_index = spr_leo_standing
	state = States.Regular
	}