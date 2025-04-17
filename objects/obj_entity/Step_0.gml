// Horizontal Collision
// Loop to handle horizontal movement pixel-by-pixel
repeat (abs(hsp)) {

	// Check if there is a collision in front (in the direction of movement)
    	// AND there is NO collision one pixel above
    	// This means we can go up a small slope (1-pixel height)
	if(
		place_meeting(x + sign(hsp), y, obj_block) and 
		not place_meeting(x + sign(hsp), y - 1, obj_block)
	)
		y--;

	// If there is no collision in front,
    	// AND there is also no floor 1 or 2 pixels below
    	// Then we're about to go down a slope, so we move down
	if (
		not place_meeting(x + sign(hsp), y, obj_block)
		and not place_meeting(x + sign(hsp), y + 1, obj_block)
		and not place_meeting(x + sign(hsp), y + 2, obj_block)
	)
		y++;

	// Now check again if we can move horizontally (after adjusting y)
	if (not place_meeting(x + sign(hsp), y, obj_block))
		x += sign(hsp);
	else {
		 hsp = 0;
		 break;
	}
}

// Vertical Colision
repeat (abs(vsp)) {
	if (!place_meeting(x, y + sign(vsp), obj_block))
		y += sign(vsp);
	else {
		vsp = 0;
		break;
	}
}
