/// @description Insert description here
// You can write your code in this editor

dx = mouse_x -x;
dy = mouse_y - y;

angle = 0;
if(dx >=0 ){
	angle = -180*(arctan(dy/dx) /pi) - 90;
	image_angle =  angle;
} else{
	angle = -180*(arctan(dy/dx) /pi) - 270;
	image_angle = angle ;
}

if(mouse_check_button_released(mb_left)){
	audio_play_sound(CannonSound,0,0);
	velocity = 50;	
	if(dx >=0){
		angle += 90;	
	}else{
		angle -= 270;	
	}
	coss = cos(degtorad(angle));
	sinn = sin(degtorad(angle));

	ball = instance_create_depth(x+coss*80,y-sinn*80-70,-1,CannonBall);
	
	
	ball.vx = coss * velocity;
	ball.vy = sinn * -velocity;
	//show_message(angle);

}