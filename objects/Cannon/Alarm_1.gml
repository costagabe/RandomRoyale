/// @description Insert description here
// You can write your code in this editor

//enemy to the left side of the cannon

if(image_angle+3 < imgTheta){
	image_angle += 3;
} if(image_angle +3 > imgTheta ){
	image_angle -= 3;	
}
	
	if(image_angle - imgTheta < 3){
	img_angle = imgTheta;
	itheta = 45+ ((current_time+irandom(300)) % 44);
	//itheta = 70;
	endRotationAnimation = true;
}

alarm[1] = 1;

