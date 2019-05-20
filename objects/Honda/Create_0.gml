/// @description Insert description here
// You can write your code in this editor
sprite_index = HondaEnterSpr;
//sprites

enterSprite = HondaEnterSpr;
walkSprite = HondaWalkSpr;
attackSprite = HondaAttackSpr;
deathSprite = HondaDeathSprite;
idleSprite = HondaIdleSpr;


//sounds 
attackSound = PunchSound;
deathSound = AltairDeathSound;
canStart = false;

init_basic_char();




//char stats
attackRange = 50;
superAttackRange = 130;
simpleAttackDamage = 50;
superAttackDamage = 30;
attackSpeed = 60; //normal attack's cooldown
superAttackCooldown = 420;
moveSpeed = 1;
hp = 5000;
maxHp = 5000;

superAttack = honda_super_attack; //super attack script
simpleAttack = simple_attack; //simple attack script

alarm[0]  = 1;
superAttackDamageCount = 0;
create_hp_bar();

