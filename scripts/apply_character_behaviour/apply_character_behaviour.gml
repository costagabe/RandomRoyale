attackCount++;
if(canAttack){
	sprite_index = attackSprite;
	attackCount = 1;
	frame_range = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);
	if(image_index >= image_number - image_speed && frame_range < image_number){
		canAttack = false;
		attackFlag = false;
	}
}else{
	if(onGround){
		vx = 5;	
		sprite_index = walkSprite;	
	}
	foo = abs(vx)/vx;

	repeat(abs(vx)){
		if(place_free(x+foo,y)){
			x+= foo;	
		}else{
			vx = 0;
			sprite_index = idleSprite;	
			break;
		}
	}

}

if(attackCount % attackSpeed == 0){
	audio_play_sound(attackSound,0,0);
	canAttack = true;
}

