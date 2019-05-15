if(!superAttackPart2){
	sprite_index = AltairSuperAtackSpr;
}
attackCount = 1;
if(end_of_animation() && !superAttackPart2){
	ball = instance_create_depth(x,y-200,-1,CannonBall);
	ball.vx = 10;
	ball.vy = -50;
	
	audio_play_sound(CannonSound,0,0);	
	sprite_index = AltairSuperAtackInverse;
	superAttackPart2 = true;
	
}
if(superAttackPart2 ){
	if(end_of_animation()){
		//show_message("oi");
			canSuperAttack = false;
			superAttackPart2 = false;
	}
}
if(soundFlag){
	
	soundFlag = false;
}