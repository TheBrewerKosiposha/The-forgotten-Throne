// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function player_state_free(){
	
	//Движение
	h_speed = lengthdir_x(input_magnitude * speed_walk, input_direction);
	v_speed = lengthdir_y(input_magnitude * speed_walk, input_direction);

	player_collision();

	//Обновление индекса спрайта
	var _old_sprite = sprite_index;
	if (input_magnitude !=0)
	{
		direction = input_direction
		sprite_index = sprite_run;
	} else sprite_index =sptite_idle;
	if (_old_sprite != sprite_index) local_frame = 0;

	// Обновление индекса изображения
	player_animate_spire()
	
	//Изменение состояния
	if(key_activate)
		{
			state = player_state_roll();
			move_distance_remaining = distance_roll;
		}
}