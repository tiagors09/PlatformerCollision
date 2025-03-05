// Horizontal Collision
repeat (abs(hsp)) {
	
	if(
		place_meeting(x + sign(hsp), y, obj_block) and 
		!place_meeting(x + sign(hsp), y - 1, obj_block)
	)
		y--;
	
	if (
		!place_meeting(x + sign(hsp), y, obj_block)
		and !place_meeting(x + sign(hsp), y + 1, obj_block)
		and !place_meeting(x + sign(hsp), y + 2, obj_block)
	)
		y++;
	
	if (!place_meeting(x + sign(hsp), y, obj_block))
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