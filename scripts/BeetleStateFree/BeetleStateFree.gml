function BeetleStateFree(){
	// Movement
	if (holding_state == "holding" || holding_state == false) { 
		
		if (speed == 0) { 
			image_speed = 0;
		} else {
			horizontal_speed = lengthdir_x(input_magnitude * speed_walk, input_direction);
			vertical_speed = lengthdir_y(input_magnitude * speed_walk, input_direction);
		}
	}

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
	if(key_speed){
		state = BeetleGamerMode;
		move_distance_remaining = distance_gamer;
	}
	
	if(key_hold){
		state = BeetleHoldMode; 
		
		// check if can throw holding 
		if (holding_state == "holding") { 
			state = BeetleThrowMode; 
		}
		
		// check if can pick up pickable
		var _picked_instance = can_interact_with_object(oBread, true)
		if (_picked_instance != noone && pickup_pickable(_picked_instance)) {
			state = BeetleHoldMode;
		}
		
		
	}
	
}