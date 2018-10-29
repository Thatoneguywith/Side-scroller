/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7A3EB4D1
/// @DnDArgument : "code" "//Get Player Input$(13_10)key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))$(13_10)key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))$(13_10)key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"))$(13_10)$(13_10)//Calculate Movement$(13_10)var move = key_right - key_left;$(13_10)$(13_10)hsp = move * walksp;$(13_10)$(13_10)vsp = vsp + grv;$(13_10)$(13_10)if (place_meeting(x,y+1,oWall)) && (key_jump)$(13_10){$(13_10)	vsp = -7;$(13_10)$(13_10)}$(13_10)$(13_10)//horizonbtal collision$(13_10)if (place_meeting(x+hsp,y,oWall))$(13_10){$(13_10)	while (!place_meeting(x+sign(hsp),y,oWall))$(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}	$(13_10)	hsp = 0;$(13_10)}	$(13_10)x = x + hsp;$(13_10)//veritcal collision$(13_10)if (place_meeting(x,y+vsp,oWall))$(13_10){$(13_10)	while (!place_meeting(x,y+sign(vsp),oWall))$(13_10)	{$(13_10)		y = y + sign(vsp);$(13_10)	}	$(13_10)	vsp = 0;$(13_10)}	$(13_10)y = y + vsp;$(13_10)$(13_10)//animation$(13_10)if (hsp != 0) image_xscale = sign(hsp);"
//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"))

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7;

}

//horizonbtal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}	
	hsp = 0;
}	
x = x + hsp;
//veritcal collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}	
	vsp = 0;
}	
y = y + vsp;

//animation
if (hsp != 0) image_xscale = sign(hsp);