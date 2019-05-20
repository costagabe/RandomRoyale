/// @description Insert description here
// You can write your code in this editor
sprite_index = IchigoEnterSpr;
//sprites
enterSprite = IchigoEnterSpr;
walkSprite = IchigoRunningSpr;
attackSprite = IchigoAttackSpr;
deathSprite = IchigoDeathSpr;
idleSprite = IchigoIdleSpr;


//sounds 
attackSound = SwordSound;
deathSound = AltairDeathSound;
canStart = false;

init_basic_char();




//char stats
attackRange = 20;
superAttackRange = 200;
simpleAttackDamage = 50;
superAttackDamage = 100;
attackSpeed = 10; //normal attack's cooldown
superAttackCooldown = 200;
superAttackPart2 = false; // flag to use for the second sprite of super attack start
moveSpeed = 8;
hp = 300;
maxHp = 300;

superAttack = ichigo_super_attack; //super attack script
simpleAttack = simple_attack; //simple attack script

alarm[0]  = 1;

create_hp_bar();

