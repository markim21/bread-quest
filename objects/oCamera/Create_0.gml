/// @desc Set Up Camera
cam = view_camera[0];
follow = oBeetle;

// center our camera on whatever we're following
view_width_half = camera_get_view_width(cam) * 0.5;
view_height_half = camera_get_view_height(cam) * 0.5;
x_to = xstart;
y_to = ystart;