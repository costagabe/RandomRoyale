/// @description Insert description here
// You can write your code in this editor
if(other.canGetsuga){
	other.alarm[1] = 1
	other.canGetsuga = false;
	if(other.team != global.team){
		other.hp -= damage;
	}
}