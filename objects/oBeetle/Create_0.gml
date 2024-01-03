state = BeetleStateFree;

collision_map = layer_tilemap_get_id(layer_get_id("Collidable"))

image_speed = 0; // disables automatic animation
horizontal_speed = 0;
vertical_speed = 0;
speed_walk = 2.0; 
speed_gamer = 3.0;
distance_gamer = 52; // this is in px

sprite_gamer = sBeetleGamerMode;
sprite_run = sBeetleRun;
sprite_idle = sBeetle;
local_frame = 0;