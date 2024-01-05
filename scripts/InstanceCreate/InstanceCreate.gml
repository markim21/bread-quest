/// @desc currently for the illusion of carrying bread on back
/// @arg xx 
/// @arg yy
/// @arg obj
/// @arg [depth]
function InstanceCreate(){
	var dep = 0;
	if (argument_count == 4) { 
		dep = argument[3];	
	}
	
	instance_create_depth(argument[0], argument[1], dep, argument[2]);
}