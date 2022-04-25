/// @description Insert description here
// You can write your code in this editor

if (hitCD == true) {
	audio_play_sound(snd_punch, 1,  0)
	hp -= 50
	hitCD = false
	if (hp > 0) {
		state = ENEMYSTATE.HIT
	} else {
		state = ENEMYSTATE.DEAD	
	}
	alarm[4] = 20
}