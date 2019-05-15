pos = ds_list_find_index(global.characters,argument0);
ds_list_delete(global.characters, pos);
instance_destroy();	