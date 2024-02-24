// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function player_state_roll(){
	
	//Движение
	h_speed = lengthdir_x(speedRoll, direction);
	v_speed = lengthdir_y(speedRoll, direction);
	
	move_distance_remaining = max(0, move_distance_remaining - speedRoll);//Переменная move_distance_remaining не установлена перед ее чтением.
	var _collider = player_collision();
	
	//Обновление спрайта
	sprite_index = speedRoll;
	var _total_frames = sprite_get_number(sprite_index)/4;
	image_index = (CARDINAL_DIR * _total_frames) + ((1 - (move_distance_remaining / distance_roll)) * _total_frames);
	
	//Изменение состояния
	if (move_distance_remaining <= 0)
	{
		state = player_state_free;
	}
	
	if(_collider){
	state = player_state_free;
	ScreenShake(8,30);
	}
}