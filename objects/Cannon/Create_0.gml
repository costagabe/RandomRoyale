/// @description Insert description here
// You can write your code in this editor

hp = 2500;
maxHp = 2500;
enemy = -1;


hpBar = instance_create_depth(x,y-64,0,Bar);
hpBar.color1 = c_green;
hpBar.color2 = c_red;
hpBar.totalHp =maxHp;
hpBar.actualHp = hp;
hpBar.width = sprite_width*0.8;
deathFlag = false;