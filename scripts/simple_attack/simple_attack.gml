sprite_index = attackSprite;
if(end_of_animation()){
	canAttack = false;
	attackFlag = false;
}
if(soundFlag){
	image_index = 0;
	enemy.hp -= simpleAttackDamage;
	audio_play_sound(attackSound,0,0);	
	soundFlag = false;
}
