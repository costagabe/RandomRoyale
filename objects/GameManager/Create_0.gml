/// @description Insert description here
// You can write your code in this editor

global.characters = ds_list_create();
global.team = 1;
preSelectedChar = -10;
theta = 0;
count =0;

manaBar = instance_create_depth(32,100,0,ManaBar);



global.mana = 100; //game starts with 30 mana's
alarm[0] = 1;
global.actualCost = 0; // to see the actual cost (black load mana) of the card

//adding the characters into the main characters array
global.deckCards[0] = Altair;
global.deckCards[1] = Ichigo;
global.deckCards[2] = Honda;
global.deckCards[3] = ShotSpell;


//randomizing the initial cards
r1 = irandom(100);
r2 = irandom(100);
r3 = irandom(100);
r4 = irandom(100);

global.deck[0] = global.deckCards[(current_time+r1)%array_length_1d(global.deckCards)];
global.deck[1] = global.deckCards[(current_time+r2)%array_length_1d(global.deckCards)];
global.deck[2] = global.deckCards[(current_time+r3)%array_length_1d(global.deckCards)];
global.deck[3] = global.deckCards[(current_time+r4)%array_length_1d(global.deckCards)];



//initing the deck cards images
for(i =1; i <= 4; i++){
	aux = instance_create_depth(-100,-100,0,global.deck[i-1]);	
	card = instance_create_depth((64+5)*i,64,0,IngameCard);
	card.sprite_index = global.deck[i-1].cardSprite;
	global.actualDeckCards[i-1] = card;
	instance_destroy(aux);
}



