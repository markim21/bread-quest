/// @desc Entity Loop

if (!global.game_paused) {
	depth = -bbox_bottom;
	
	if(lifted) && (instance_exists(oBeetle)){
		if (oBeetle.sprite_index != sBeetleLift) {
			x = oBeetle.x;
			y = oBeetle.y;
			z = CARRY_HEIGHT;
			depth = oBeetle.depth - 1;
		}
	}
}

