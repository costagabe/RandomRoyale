/// @description Insert description here
// You can write your code in this editor


	ball = instance_create_depth(mouse_x,mouse_y,-1,CannonBall);
	b = instance_create_depth(mouse_x+ 200,mouse_y - 150,-1,CannonBall2);

	itheta = 45+(count % 44);
	theta = degtorad(itheta);
	
	//b.vx = -10;
	
	dx = b.x - ball.x;
	dy = ball.y - b.y;
	up = 5*dx*dx;
	coss2 = cos(theta)*cos(theta);
	down = 2*coss2*(dy-tan(theta)*dx);
	v = sqrt(abs(up/down));
	
	ball.vx = v*cos(theta);
	ball.vy = -v*sin(theta);
