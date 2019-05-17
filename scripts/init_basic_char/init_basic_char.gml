vx =0;
vy = 0;
ay = 5;
onGround = false;
attackCount = 0;
superAttackCount = 0;
canAttack = false;
canSuperAttack = false;
enemy = -1;
distance = 9999; //calculate distance to enemy
deathFlag = false;
soundFlag = false;
canGetsuga = true;
if(global.team != 1){
	image_xscale = -1;	
}