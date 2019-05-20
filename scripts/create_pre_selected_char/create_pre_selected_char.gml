index = argument0;

if(instance_exists(preSelectedChar)){
	instance_destroy(preSelectedChar)	
}
//auxiliarity var to get local attributes of any card
aux = instance_create_depth(-100,-100,0,global.deck[index]);

//actual cost of this card to see how mutch mana it goint to use
global.actualCost = aux.cost;

//set the pre selected chars
preSelectedChar = instance_create_depth(mouse_x, mouse_y,0,PreSelectedChar);	
preSelectedChar.obj = global.deck[index];
preSelectedChar.sprite_index = global.deck[index].idleSprite;
preSelectedChar.index = index;
instance_destroy(aux);