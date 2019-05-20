hpBar = instance_create_depth(x,y-sprite_height/2 - 25,0,Bar);
hpBar.color1 = c_lime;
hpBar.color2 = c_red;
hpBar.totalHp =maxHp;
hpBar.actualHp = hp;
hpBar.width = sprite_width*1.5;