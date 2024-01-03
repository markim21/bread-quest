function BeetleGamerMode(){
	horizontal_speed = lengthdir_x(speed_gamer, direction);
	vertical_speed = lengthdir_y(speed_gamer, direction);
	
	move_distance_remaining = max(0, move_distance_remaining - speed_gamer);
	
	var _collided = BeetleCollision();
	
	// Update Sprite 
	sprite_index = sprite_gamer;
	var _total_frames = sprite_get_number(sprite_index) / 4;
	image_index = (CARDINAL_DIR * _total_frames) + min(((1 - (move_distance_remaining / distance_gamer)) * _total_frames), _total_frames - 1);

	// Change State
	if(move_distance_remaining <= 0) state = BeetleStateFree;
}