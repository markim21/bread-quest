/// @desc Update Camera

// update position of camera to whatever instance we're following
// update destination
if(instance_exists(follow)) {
	x_to = follow.x;
	y_to = follow.y; 
}

x += (x_to - x) / 15; // so it doesn't SNAP, but smoothly goes
y += (y_to - y) / 15; 

// Keep camera center inside room
x = clamp(x, view_width_half, room_width - view_width_half);
y = clamp(y, view_height_half, room_height - view_height_half);

// Screenshake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);

//shake_remain = max(0, shake_remain((1/shake_length) * shake_magnitude)); // math

camera_set_view_pos(cam, x - view_width_half, y - view_height_half); // this sets the TOP LEFT, so we change to accomodate the middle center location