/// @description Insert description here
// You can write your code in this editor

dx = mouse_x -x;
dy = mouse_y - y;

if(dx >=0 ){
	image_angle =  -180*(arctan(dy/dx) /pi) - 90;
} else{
	image_angle = -180*(arctan(dy/dx) /pi) - 270;
}