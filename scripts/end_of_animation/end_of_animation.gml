frame_range = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);
return image_index >= image_number - image_speed && frame_range < image_number;