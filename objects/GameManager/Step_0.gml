/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_released(vk_space)){
	//add_character(Honda, mouse_x, mouse_y);	
}

if(keyboard_check_released(ord("Q"))){
	global.team = 1;
}
if(keyboard_check_released(ord("W"))){
	global.team = 2;
}


if(keyboard_check_released(ord("1"))){
	create_pre_selected_char(0);
}
if(keyboard_check_released(ord("2"))){
	create_pre_selected_char(1);
}
if(keyboard_check_released(ord("3"))){
	create_pre_selected_char(2);
}
if(keyboard_check_released(ord("4"))){
	create_pre_selected_char(3);
}
