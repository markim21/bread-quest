function BeetleStateFree(){
	// Movement
	horizontal_speed = lengthdir_x(input_magnitude * speed_walk, input_direction);
	vertical_speed = lengthdir_y(input_magnitude * speed_walk, input_direction);

	BeetleCollision();

	// Update Sprite Index
	var _oldSprite = sprite_index;
	if (input_magnitude != 0) {	// when we are moving,
		direction = input_direction; // input direction is changing every frame. built in var automatically wraps angle, too
		sprite_index = sprite_run;
	} else sprite_index = sprite_idle;

	if (_oldSprite != sprite_index) local_frame = 0;

	// Update Image Index
	BeetleAnimateSprite();
	
	// Change State (at the end of the frame)
	if(key_speed){
		state = BeetleGamerMode;
		move_distance_remaining = distance_gamer;
	}
	
	if(key_hold){
		state = BeetleHoldMode; 
	}
	
}