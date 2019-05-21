/// @description Insert description here
// You can write your code in this editor
if(!flagColision){
	list = ds_list_create();
	chars = instance_place_list(x,y,Character, list, false);
	enemies = ds_list_create();
	
		size = ds_list_size(list);
	//verify if any of the objects of the colision is a enemy
	for(i=0; i < size; i++){
		char = ds_list_find_value(list,i);
		if(char.team != team){
			ds_list_add(enemies,char);
			flagColision = true;
		}
		
	}
}

if(flagColision){
	vx =0;
	sprite_index = AltairSuperAttackProjectilleExplosionSpr;
	if(sprite_index != AltairSuperAttackProjectilleExplosionSpr){
		x += 32*image_xscale;
	
	}
	
	for(i =0; i < ds_list_size(enemies);i++){
		enemie = ds_list_find_value(enemies,i);
		if(instance_exists(enemie) && object_get_name(enemie.object_index) != "Cannon"){
			enemie.hp -= damage/20;
		}
	}
	
}


/*	
	flagColision = true;
	



	if(totalDamage + damage/20 < damage){
		cannon.hp -= damage/(20);
		totalDamage += damage/(20);
	}else{
		cannon.hp -= abs(totalDamage-damage);
		totalDamage = damage;
	}*/
	
