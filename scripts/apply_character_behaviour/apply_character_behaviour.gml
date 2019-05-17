if(!deathFlag){
	if(enemy != -1 && instance_exists(enemy)  ){
		distance = get_distance(enemy);
		if(canSuperAttack && abs(x-enemy.x) <= superAttackRange && enemy.hp > 0){		
			script_execute(superAttack);	
		}
		else if(abs(x-enemy.x) >= attackRange + abs(enemy.sprite_width)/2 ) {
			walk();
		}else if(canAttack && distance <= + abs(sprite_width)+ attackRange + abs(enemy.sprite_width)/2 && enemy.hp >0){
			script_execute(simpleAttack);
		}
		else{
			sprite_index = iddleSprite;	
		}
	}else {
		find_enemy();	
	}

	if(superAttackCount % superAttackCooldown == 0){
			canSuperAttack = true;
			soundFlag = true;
			canAttack = false;
			superAttackCount++;
	}

	//every time that it can attack, it does it!
	if(attackCount % attackSpeed == 0){
		canAttack = true;
		soundFlag = true;
		attackCount ++;
	}


	if(hp <=0){
		deathFlag = true;
	
	}//won the round
	if(enemy == -10){
		delete_character(self);
		with(hpBar){
			instance_destroy();	
		}
	}
}else{
	if(sprite_index != deathSprite){
		audio_play_sound(deathSound,0,0);	
	}
	sprite_index = deathSprite;
	
	
	with(hpBar){
		instance_destroy();	
	}
	if(end_of_animation()){
		delete_character(self);
	}
}

if(hp<0){
	hp = 0;	
}