if(!superAttackPart2){
	restartAnimation = false;
	if(sprite_index != AltairSuperAtackSpr){
			restartAnimation = true;
	}
	sprite_index = AltairSuperAtackSpr;
	if(restartAnimation){
		image_index = 0;	
	}
}
if(end_of_animation() && !superAttackPart2){
	foo = image_xscale;
	shot = instance_create_depth(x + sprite_width/2+(foo*5),y-15,-1,AltairSuperAttackProjectille);
	shot.damage = superAttackDamage;
	shot.team = team;
	shot.vx = 20*foo;
	shot.image_xscale = foo;
	sprite_index = AltairSuperAtackInverse;
	superAttackPart2 = true;
	
}
if(superAttackPart2 ){
	if(end_of_animation()){
			canSuperAttack = false;
			superAttackPart2 = false;
	}
}
if(soundFlag){
	
	soundFlag = false;
}