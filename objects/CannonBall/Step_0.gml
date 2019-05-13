apply_gravity();

if(onGround ){
	instance_destroy();	
}
	
if(!place_free(x,y+1)){
	onGround = true;
}

foo = abs(vx)/vx;
repeat(abs(vx)){
	if(place_free(x+foo,y)){
		x+= foo;	
	}else{
		vx = 0;
		break;
	}
}