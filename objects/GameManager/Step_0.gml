/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_released(vk_space)){
	add_character(Ichigo, mouse_x, mouse_y);	
}

if(keyboard_check_released(ord("1"))){
	global.team = 1;
}
if(keyboard_check_released(ord("2"))){
	global.team = 2;
}

