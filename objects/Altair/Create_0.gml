/// @description Insert description here
// You can write your code in this editor

enterSpriteSize = 5;
enterSpriteCount = 0;
attackSpriteSize = 5;
sprite_index = AltairEnterSprite;
idleSprite = AltairIdleSpr;
enterSprite = AltairEnterSprite;
walkSprite = AltairWalkingSpr;
alreadyTouchGround = false;
attackSprite = AltairAtack1Spr;
attackSound = SwordSound;

//basics for gravitables
vx =0;
vy = 0;
ay = 5;
onGround = false;

attackRange = 20;
superAttackRange = 2000;

simpleAttackDamage = 25;
superAttackDamage = 125;

attackSpeed = 30;
superAttackCooldown = 160;
attackCount = 0;
canAttack = false;
canSuperAttack = false;
superAttackPart2 = false; // flag to use for the second sprite of super attack start

hp = 100;
maxHp = 100;
soundFlag = false;

enemy = -1;

distance = 9999;
superAttack = altair_super_attack;
simpleAttack = simple_attack;

hpBar = instance_create_depth(x,y-25,0,HPBar);
hpBar.totalHp =maxHp;
hpBar.actualHp = hp;
hpBar.width = sprite_width*1.5;