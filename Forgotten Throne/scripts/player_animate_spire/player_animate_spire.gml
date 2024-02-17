// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function player_animate_spire(){
		// Обновление спрайта
		//CARDINAL_DIR floor(((direction div 45 ) + 1) * 0.5)
	var _total_frames = sprite_get_number(sprite_index) / 4;
	image_index = local_frame + (CARDINAL_DIR * _total_frames);
	local_frame += sprite_get_speed(sprite_index) / FRAME_RATE;

	//Если нанимация заканчивается на следущем этапе игры
	if (local_frame >= _total_frames)
	{
		animation_end = true;
		local_frame -= _total_frames;
	}else animation_end = false;

}