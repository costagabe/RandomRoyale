if(sprite_index != IchigoSpecialSpr){
	image_index = 0;	
}
sprite_index = IchigoSpecialSpr;
if(image_index  == 6){
	getsuga = instance_create_depth(x,y,0,Getsuga);
	getsuga.vx = 20*image_xscale;
	getsuga.image_xscale = image_xscale;
	getsuga.damage = superAttackDamage;
}
if(end_of_animation()){
	canSuperAttack = false;
	
}