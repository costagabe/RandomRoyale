/// @description Insert description here
// You can write your code in this editor
cannon = instance_place(x,y,Cannon);
if(cannon.team != team){
	if(sprite_index != AltairSuperAttackProjectilleExplosionSpr){
		x += 64*image_xscale;
	}
	flagColision = true;
	sprite_index = AltairSuperAttackProjectilleExplosionSpr;



	if(totalDamage + damage/20 < damage){
		cannon.hp -= damage/(20);
		totalDamage += damage/(20);
	}else{
		cannon.hp -= abs(totalDamage-damage);
		totalDamage = damage;
	}
	vx =0;
}