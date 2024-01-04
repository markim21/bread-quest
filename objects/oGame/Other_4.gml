/// @desc Layer Management 

layer_set_visible("Collidable", false); //take collision layer, make it invisible
global.i_camera = instance_create_layer(0,0, layer, oCamera); 