/// @description Insert description here
// You can write your code in this editor
sprite_index = AltairEnterSprite;

//sprites
enterSprite = AltairEnterSprite;
walkSprite = AltairWalkingSpr;
attackSprite = AltairAtack1Spr;
deathSprite = AltairDeathSpr;
idleSprite = AltairIdleSpr;


//sounds 
attackSound = SwordSound;
deathSound = AltairDeathSound;
canStart = false;

init_basic_char();

//char stats
attackRange = 20;
superAttackRange = 2000;
simpleAttackDamage = 25;
superAttackDamage = 125;
attackSpeed = 30; //normal attack's cooldown
superAttackCooldown = 60;
superAttackPart2 = false; // flag to use for the second sprite of super attack start


maxHp = 100;
hp = maxHp;


superAttack = altair_super_attack; //super attack script
simpleAttack = simple_attack; //simple attack script

alarm[0]  = 1;

create_hp_bar();