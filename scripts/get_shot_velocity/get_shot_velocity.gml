//v = 17 a = 5 theta >= 45 < 90 y0 = 
theta = argument0;
x0 = argument1;
y0 = argument2;
x1 = argument3;
y1 = argument4;


dx = abs(x1-x0);

dy = (y0-y1);

up = 5*dx*dx;
coss2 = cos(theta)*cos(theta);
down = 2*coss2*(dy-tan(theta)*dx);
return sqrt(abs(up/down));


