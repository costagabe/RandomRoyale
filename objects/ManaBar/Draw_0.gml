/// @description Insert description here
// You can write your code in this editor



draw_roundrect_color(x-1,y-1,x+width+1, y+17,blackBlue,blackBlue,0);

actualManaCost = width*(global.actualCost/100)


draw_roundrect_color(x,y,x+width, y+16,blue,blue,0);


manaBarWidth = width*(global.mana/100);

draw_roundrect_color(x,y,x+manaBarWidth, y+16,lightBlue,lightBlue,0);



for(i =1;i <= 9; i++){
	draw_line_color(x+27*i,y,x+27*i,y+16,blackBlue,blackBlue);
	draw_line_color(x+27*i+1,y,x+27*i+1,y+16,blackBlue,blackBlue);
}

if(actualManaCost != 0){
	draw_rectangle_color(x+2,y+2,x+actualManaCost-2, y+15,c_black,c_black,c_black,c_black,1);
	draw_rectangle_color(x+1,y+1,x+actualManaCost-1, y+16,c_black,c_black,c_black,c_black,1);
}
