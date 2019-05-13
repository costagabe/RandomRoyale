/// @description Insert description here
// You can write your code in this editor

vy += ay;

repeat(abs(vy)){
	foo = abs(vy)/vy;
	if(place_free(x,y+foo)){
		y+= foo;	
	}else{
		break
	}
}
repeat(abs(vx)){
	foo = abs(vx)/vx;
	if(place_free(x+foo,y)){
		x+= foo;	
	}else{
		break;
	}
}