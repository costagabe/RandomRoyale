if(onGround){
	if(team == 1){
		vx = 5;	
	}	else{
		vx = -5;	
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