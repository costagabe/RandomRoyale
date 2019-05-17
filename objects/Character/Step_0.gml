/// @description Insert description here
// You can write your code in this editor
	if(sprite_index == enterSprite){	
		//if(end_of_animation()){
		if(image_index == image_number-1){
			canStart = true;
		}
			
	}
		if(canStart){
		apply_character_behaviour();
	}
if(instance_exists(hpBar)){
	hpBar.actualHp = hp;
	hpBar.xx = x -  hpBar.width /2;
	hpBar.yy = y-50;
}
apply_gravity();
	