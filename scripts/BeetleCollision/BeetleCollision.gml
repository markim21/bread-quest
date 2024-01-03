function BeetleCollision(){
	var _collision = false;
	
	// horizontal tiles
	if( tilemap_get_at_pixel(collision_map, x + horizontal_speed, y) ) { // tilemap_get_asdfasdf if you've done transformations and stuff to your player
																			// rn, this returns either 0 or 1
		// collision has happened.
		x -= x mod TILE_SIZE; // mod handles if we're on the left or the right of a tile
		if(sign(horizontal_speed)==1) x += TILE_SIZE - 1;
		horizontal_speed = 0;
		_collision = true;
	}
	
	x += horizontal_speed;
	
	// vertical tiles
	if( tilemap_get_at_pixel(collision_map, x, y + vertical_speed) ) {
		y -= y mod TILE_SIZE;
		if(sign(vertical_speed)==1) y += TILE_SIZE - 1;
		vertical_speed = 0;
		_collision = true;
	}
	
	y += vertical_speed;
	
	return _collision; 
}