attackCount++;

if(canSuperAttack){
	script_execute(superAttack);
}
else if(canAttack){
	script_execute(simpleAttack);
}else{
	walk();
}

//every time that it can attack, it does it!
if(attackCount % attackSpeed == 0){
	//canAttack = true;
	//soundFlag = true;
}

if(attackCount % superAttackCooldown == 0){
		canSuperAttack = true;
		soundFlag = true;
}

if(team != 1){
	image_xscale = -1;	
}

if(hp <=0){
	instance_destroy();	
}