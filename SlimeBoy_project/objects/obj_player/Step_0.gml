/// Player Movement

if (!place_meeting(x, y+(vspeed/2), obj_ground_parent))
{
	if vspeed < grav_max
	{
		vspeed+=grav;
	}
}
else
{
	vspeed = 0;
}

if keyboard_check(ord("A"))
{	
	x = x - 2;
}

if keyboard_check(ord("D"))
{
	x = x + 2;
}

if keyboard_check_pressed(vk_space) and (place_meeting(x, y+vspeed, obj_ground_parent))
{
	vspeed = -jump_spd;
}
