/// @arg id

function ActivateLiftable(){
	if (global.i_lifted == noone) { 
		// not currently holding anything 
		
		global.i_lifted = argument0;
		with(global.i_lifted) { 
			lifted = true;
			persistent = true;
		}
	}
}