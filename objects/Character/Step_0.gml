/// @description Insert description here
// You can write your code in this editor
	if(enterSpriteCount < enterSpriteSize*5){	
		if(onGround){
			enterSpriteCount ++;		
			}
				sprite_index = enterSprite ;	
			
	}else{
		
		apply_character_behaviour();
	}
if(instance_exists(hpBar)){
	hpBar.actualHp = hp;
	hpBar.xx = x -  hpBar.width /2;
	hpBar.yy = y-50;
}
apply_gravity();
	