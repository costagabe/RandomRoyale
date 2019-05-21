/// @description Insert description here
// You can write your code in this editor

if(count < 5){
	count++;
	alarm[0] = 10;
	shot = instance_create_depth(x,y,0,AltairSuperAttackProjectille);
	shot.damage = 200;
	shot.team = global.team;
	if(global.team ==1){
		foo = 1
	}else{
		foo = -1
	}
	shot.vx = 20*foo;
	shot.image_xscale = foo;
	shot.alarm[0] = 30;
}