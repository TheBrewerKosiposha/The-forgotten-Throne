function player_collision(){
	var _collision = false;	
	
	//Горозонтальная ось
	if (tilemap_get_at_pixel(collision_map,x + h_speed, y))
	{
		x -= x mod TILE_SIZE;
		if (sign(h_speed) == 1 ) x += TILE_SIZE - 1;
		h_speed = 0;
		_collision = true;
	}
	
	//Горизонтальная фиксация
	x += h_speed;
	
	//Вертикальная ось
	if (tilemap_get_at_pixel(collision_map, x, y + v_speed))
	{
		y -= y mod TILE_SIZE;
		if (sign(v_speed) == 1 ) y += TILE_SIZE - 1;
		v_speed = 0;
		_collision = true;
	}
	
	//Вертикальная фиксация
	y += v_speed;
	
	
	
	return _collision;
}