if(onGround){
	if(instance_exists(enemy) && enemy != -1){
		if(x-enemy.x < 0){//inimigo à direita
			vx = 5;
			image_xscale = 1;
		}else{
			vx = -5;
			image_xscale = -1;
		}
	}
	sprite_index = walkSprite;	
}
foo = abs(vx)/vx;

repeat(abs(vx)){
	if(place_free(x+foo,y)){
		x+= foo;	
	}	else{
		vx = 0;
		sprite_index = idleSprite;	
		break;
	}
}