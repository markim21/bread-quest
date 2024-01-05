function BeetleStateAct(){
	// Update Sprite
	BeetleAnimateSprite();
	
	if (animation_end) {
		state = BeetleStateFree;
		animation_end = false;
		if (animation_end_script != -1) {
			script_execute(animation_end_script);
			animation_end_script = -1;
		}
	}
}