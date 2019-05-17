/// @description Insert description here
// You can write your code in this editor
sprite_index = IchigoEnterSpr;
image_index = 0;

//sprites
idleSprite = AltairIdleSpr;
enterSprite = IchigoEnterSpr;
walkSprite = AltairWalkingSpr;
attackSprite = AltairAtack1Spr;
deathSprite = AltairDeathSpr;
iddleSprite = AltairIdleSpr;


//sounds 
attackSound = SwordSound;
deathSound = AltairDeathSound;
canStart = false;

//basics for gravitables
vx =0;
vy = 0;
ay = 5;
onGround = false;

//char stats
attackRange = 20;
superAttackRange = 2000;
simpleAttackDamage = 25;
superAttackDamage = 125;
attackSpeed = 30; //normal attack's cooldown
superAttackCooldown = 60;
attackCount = 0;
superAttackCount = 0;
canAttack = false;
canSuperAttack = false;
superAttackPart2 = false; // flag to use for the second sprite of super attack start

hp = 100;
maxHp = 100;


enemy = -1;

distance = 9999; //calculate distance to enemy

superAttack = altair_super_attack; //super attack script
simpleAttack = simple_attack; //simple attack script


//flags
deathFlag = false;
soundFlag = false;

alarm[0]  = 1;

create_hp_bar();