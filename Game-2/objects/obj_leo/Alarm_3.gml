/// @description Insert description here
// You can write your code in this editor
state = States.Regular

if (global.leo_health <= 0) {
	room_goto(Lose)
}