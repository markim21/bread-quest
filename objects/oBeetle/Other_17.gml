/// @desc change holding state as necessary

if (holding_state == "picking") {
	holding_state = "holding";
} else if (holding_state == "throwing") { 
	holding_state = false;	
}