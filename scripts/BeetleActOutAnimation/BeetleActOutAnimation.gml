/// @desc BeetleActOutAnimation(Sprite, EndScript)
/// @arg Sprite
/// @arg EndScript

// Carry out an animation and optionally carry out a script

function BeetleActOutAnimation(){
	state = BeetleStateAct;
	sprite_index = argument[0];
	if(argument_count > 1) animation_end_script = argument[1];
	local_frame = 0;
	image_index = 0;
	BeetleAnimateSprite();
}