if(!canAttack && !canSuperAttack|| canAttack && !canSuperAttack){
		attackCount++;
}

if(enemy != -1 && instance_exists(enemy)){
	distance = get_distance(enemy);
	if(canSuperAttack && abs(x-enemy.x) <= superAttackRange){		
		script_execute(superAttack);	
	}
	else if(canAttack && distance < attackRange +  enemy.image_xscale*enemy.sprite_width/2){
		script_execute(simpleAttack);
	}else if(abs(x-enemy.x) >= attackRange + enemy.image_xscale*enemy.sprite_width/4) {
		walk();
	}else{
		sprite_index = AltairIdleSpr;	
	}
}else {
	find_enemy();	
}

if(attackCount % superAttackCooldown == 0){
		canSuperAttack = true;
		soundFlag = true;
		//canAttack = false;
		attackCount++;
}

//every time that it can attack, it does it!
if(attackCount % attackSpeed == 0){
	canAttack = true;
	soundFlag = true;
	attackCount++;
}


if(hp <=0){
	
	delete_character(self);
	with(hpBar){
		instance_destroy();	
	}
}
if(instance_exists(hpBar)){
	hpBar.actualHp = hp;
	hpBar.xx = x -  hpBar.width /2;
	hpBar.yy = y-50;
}