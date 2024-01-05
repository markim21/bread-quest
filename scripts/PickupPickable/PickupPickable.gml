/// @desc PickupPickable(inst), picks up a pickable item
/// @arg instance 
/// assumes a holding variable 

function PickupPickable(){
	var _instance = argument0; 
	
	holding_state = "picking"; 
	
	// creating an instance to 'appear' above the character
	holding = InstanceCreate(_instance.x, _instance.y, oHoldable);
	
	// update pointers
	holding.reference = _instance; //points to object being thrown
	holding.holder = self; //points to person holding object. 
	
	//old_reference_mask_index //use beetle's mask for the holdable's collision.
	
	return true; 
	
	// like eating glass bloc party
}