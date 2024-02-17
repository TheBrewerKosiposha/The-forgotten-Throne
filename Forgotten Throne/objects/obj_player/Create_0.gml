state = player_state_free;

collision_map = layer_tilemap_get_id(layer_get_id("Col"));


image_speed = 0;
h_speed = 0;
v_speed = 0;
speed_walk = 1.0;
speedRoll = 2.0;
distance_roll = 52;

sprite_roll = spr_layer_roll;
sprite_run = spr_player_run;
sptite_idle = spr_player_idle;
local_frame = 0;