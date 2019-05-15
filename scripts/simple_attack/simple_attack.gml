sprite_index = attackSprite;
attackCount = 1;
if(end_of_animation()){
	canAttack = false;
	attackFlag = false;
}
if(soundFlag){
	audio_play_sound(attackSound,0,0);	
	soundFlag = false;
}