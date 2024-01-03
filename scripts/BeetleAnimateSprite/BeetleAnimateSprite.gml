function BeetleAnimateSprite()
{
	var _total_frames = sprite_get_number(sprite_index) / 4; // number of frames per anim mvmt

	image_index = local_frame + (CARDINAL_DIR * _total_frames); // "the magic line". never animate by image_speed! 

	local_frame += sprite_get_speed(sprite_index) / FRAME_RATE; // localframe + 15 speed / 60 fps

	if(local_frame >= _total_frames) {
		animation_end = true; 	
		local_frame -= _total_frames;
	} else animation_end = false; 	
}

