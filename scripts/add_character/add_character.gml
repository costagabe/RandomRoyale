
obj = argument0;
xx = argument1;
yy = argument2;

char = instance_create_depth(xx,yy,0,obj);
char.team =  irandom(1)+1;
ds_list_add(global.characters,char);