function BeetleStateFree(){
	// Movement
	horizontal_speed = lengthdir_x(input_magnitude * speed_walk, input_direction);
	vertical_speed = lengthdir_y(input_magnitude * speed_walk, input_direction);

	BeetleCollision();

	// Update Sprite Index
	var _oldSprite = sprite_index;
	if (input_magnitude != 0) {
		direction = input_direction;
		sprite_index = sprite_run;
	} else sprite_index = sprite_idle;

	if (_oldSprite != sprite_index) local_frame = 0;

	// Update Image Index
	BeetleAnimateSprite();
	
	// Change State (at the end of the frame)
	if(key_hold){
		// TODO: CHANGE GAMERMODE TO ACTUALLY PICKING UP / THROWING / DROPPING BREAD
		state = BeetleGamerMode;
		move_distance_remaining = distance_gamer;
	}
	
}