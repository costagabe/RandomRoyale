ay = 5;
vy += ay;

foo = abs(vy)/vy;
repeat(abs(vy)){
	
	if(place_free(x,y+foo)){
		y+= foo;	
	}else{
		onGround = true;
		
			vy =0;
		
		break;
	}
}
