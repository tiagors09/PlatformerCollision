var _jump, _jump_r, _right, _left, _hsp = 0, _is_on_floor;

_is_on_floor = place_meeting(x, y + 1, obj_block);
_right = keyboard_check(vk_right);
_left = keyboard_check(vk_left);
_jump = keyboard_check_pressed(vk_up);
_jump_r = keyboard_check_released(vk_up);

_hsp = (_right - _left) * sp;

hsp = lerp(hsp, _hsp, .1);

if (not _is_on_floor) {
	vsp += grav;
	
	if (_jump_r and vsp < 0)
		vsp = vsp * .5;
}
	
if (_is_on_floor) {
	if (_jump)
		vsp = jump_height;
}
