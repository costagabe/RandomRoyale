/// @description Insert description here
// You can write your code in this editor

dx = mouse_x -x;
dy = mouse_y - y;

angle = 0;
/*if(dx >=0 ){
	angle = -180*(arctan(dy/dx) /pi) - 90;
	image_angle =  angle;
} else{
	angle = -180*(arctan(dy/dx) /pi) - 270;
	image_angle = angle ;
}*/
if(endRotationAnimation &&canShot && enemy != -1 && instance_exists(enemy) && !enemy.deathFlag && object_get_name(enemy.object_index) != "Cannon" ){
	
		//if the enemy is on cannon range
	if(abs(enemy.x - x) < 230){
		v = get_shot_velocity(theta,x+coss*80, y-sinn*80,enemy.x, enemy.y);
	ball = instance_create_depth(x+coss*80,y-sinn*80,-1,CannonBall);
	
	ball.vx = coss * v;
	ball.vy = sinn * -v;
	//dx = ball.vx *ball.vx*sin(theta*2)/5;
	ball.damage = v *3;
	ball.enemy = enemy;
	
	//setting flags to false
	canShot = false;
	endRotationAnimation = false;
	

		
		//show_message(string(itheta));
		
		//enemy to the left side of the cannon
		if(x-enemy.x > 0){
			imgTheta = 180-itheta;
			theta = degtorad(itheta);	
			coss = -cos(theta);
		}else{//enemy to the right side of the cannon
			
			theta = degtorad(itheta);
			coss = cos(theta);
			imgTheta = itheta;
		}
		
		
		sinn = sin(theta);
		
		
	}
	
}else{
	find_enemy();	
}



if(mouse_check_button_released(mb_left)){
	canShot = true;
	/*audio_play_sound(CannonSound,0,0);
	velocity = 27;	
	if(dx >=0){
		angle += 90;	
	}else{
		angle -= 270;	
	}
	coss = cos(degtorad(angle));
	sinn = sin(degtorad(angle));*/

	//ball = instance_create_depth(x+coss*80,y-sinn*80,-1,CannonBall);
	
	//
	//ball.vx = coss * velocity;
	//ball.vy = sinn * -velocity;
	//show_message(angle);
	/*if(instance_position(mouse_x, mouse_y, Cannon) == self){

		show_message(object_get_name(self.object_index));	
	}*/
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