/// @description Insert description here
// You can write your code in this editor
state = ENEMYSTATE.FREE

hp = 100

hitCD = true
stateCD = true
ready = true
enum ENEMYSTATE{
	FREE,
	ATTACK,
	HIT,
	DEAD
}