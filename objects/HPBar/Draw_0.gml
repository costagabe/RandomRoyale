/// @description Insert description here
// You can write your code in this editor

//https://yal.cc/gamemaker-draw-clip/

height = 5;
//borda
draw_rectangle_color(xx-1,yy-1,xx+width+1,yy+height+1,c_black,c_black,c_black,c_black,false);

//hp vermelho
draw_rectangle_color(xx+1,yy,xx+width,yy+height,c_red,c_red,c_red,c_red,false);

//hp verde
conta = (actualHp/totalHp)*width;
draw_rectangle_color(xx+1,yy,xx+conta,yy+height,c_green,c_green,c_green,c_green,false);


