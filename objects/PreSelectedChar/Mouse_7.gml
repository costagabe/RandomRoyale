/// @description Insert description here
// You can write your code in this editor

//auxilar object to get instance attributes
aux = instance_create_depth(-100,100,0,obj);

// add the char if it is pre selected and the player has the mana to use it
if(global.mana > aux.cost){
	addedChar = add_character(obj,x,y);
	
	global.mana-= addedChar.cost;
	global.actualCost = 0;
	global.deck[index] = global.chars[(current_time)%3];
	
	//auxilar object to get new random instance attributes
	var aux2 = instance_create_depth(-100,0,0,global.deck[index]);
	global.cards[index].sprite_index = aux2.cardSprite;//set the new card sprite
	instance_destroy(aux2);
	instance_destroy();
}
instance_destroy(aux);