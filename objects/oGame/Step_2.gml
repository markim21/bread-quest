/// @desc done at the very end of every step. pause the game

if (keyboard_check_pressed(vk_escape)) {
	global.game_paused = !global.game_paused; // owo toggle trick
	
	if (global.game_paused) { 
		with (all) { // all = select every active instance in the game
			game_paused_image_speed = image_speed; 
			image_speed = 0; 
		}
	} 
	else {
		with (all) {
			image_speed = game_paused_image_speed;	
		}
	}
}