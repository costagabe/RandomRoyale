//apply_gravity();

if(y > room_height ){
	instance_destroy();	
}
	
if(!place_free(x,y+1)){
	onGround = true;
}

x += vx;

