/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_text(10,10,string(distance))
draw_text(10,50,string(attackRange))
if(instance_exists(enemy)){
draw_line(x,y,enemy.x,enemy.y);
}