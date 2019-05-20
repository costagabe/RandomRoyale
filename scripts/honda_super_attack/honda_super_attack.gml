if(sprite_index != HondaSuperAttackSpr){
	image_index = 0;	
	alarm[2] = 1;
}
sprite_index = HondaSuperAttackSpr;
if(end_of_animation()){
	canSuperAttack = false;
	
}