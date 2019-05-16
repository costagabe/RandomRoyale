size = ds_list_size(global.characters);
minDist = 9999;

charEnemy = -10;
for(i =0; i < size; i++){
	char = ds_list_find_value(global.characters,i);
	if(char.team != team){
			enemyDistance = get_distance(char);
			if(enemyDistance < minDist && abs(char.y - y) < 128 && !deathFlag){
				minDist = enemyDistance;
				charEnemy =  char;
			}
	}
}
enemy = charEnemy;