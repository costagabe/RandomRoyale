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
if(enemy != -1 && instance_exists(enemy)){
	//if the enemy is on cannon range
	if(abs(enemy.x - x) > 230){
		
	}
}else{
	find_enemy();	
}



if(mouse_check_button_released(mb_left)){
	audio_play_sound(CannonSound,0,0);
	velocity = 27;	
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

if(hp <=0){
	
	delete_character(self);
	with(hpBar){
		instance_destroy();	
	}
}
if(instance_exists(hpBar)){
	hpBar.actualHp = hp;
	hpBar.xx = x -  hpBar.width /2;
	hpBar.yy = y-50;
}