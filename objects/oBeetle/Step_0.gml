// Get Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_hold = keyboard_check_pressed(ord("Z"));
//key_attack = keyboard_check_pressed(ord("X"));
//key_item = keyboard_check_pressed(ord("C"));

input_direction = point_direction(0,0,key_right-key_left, key_down-key_up);
input_magnitude = (key_right - key_left != 0) || (key_down - key_up != 0);

if (!global.game_paused) script_execute(state); // for script_execute: also include args here if needed