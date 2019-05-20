/// @description Insert description here
// You can write your code in this editor

if(superAttackDamageCount < 18){
	superAttackDamageCount++;
	if(instance_exists(enemy)){
		enemy.hp -= superAttackDamage;
		alarm[2] = 3;
		audio_play_sound(PunchHitSound,0,0);
	}
}else if(superAttackDamageCount == 18){
		superAttackDamageCount = 0;
}