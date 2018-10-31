/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7A3EB4D1
/// @DnDArgument : "code" "vsp = vsp + grv;$(13_10)$(13_10)//horizonbtal collision$(13_10)if (place_meeting(x+hsp,y,oWall))$(13_10){$(13_10)	while (!place_meeting(x+sign(hsp),y,oWall))$(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}	$(13_10)	hsp = -hsp;$(13_10)}	$(13_10)x = x + hsp;$(13_10)//veritcal collision$(13_10)if (place_meeting(x,y+vsp,oWall))$(13_10){$(13_10)	while (!place_meeting(x,y+sign(vsp),oWall))$(13_10)	{$(13_10)		y = y + sign(vsp);$(13_10)	}	$(13_10)	vsp = 0;$(13_10)}	$(13_10)y = y + vsp;$(13_10)$(13_10)//animation$(13_10)if (! place_meeting(x,y+vsp,oWall))$(13_10){$(13_10)	sprite_index = sEnemy2$(13_10)	image_speed = 0;$(13_10)	if(sign(vsp)>0) image_index = 1; else image_index = 0;$(13_10)}	$(13_10)else$(13_10){$(13_10)	image_speed = 1;$(13_10)	if (hsp == 0)$(13_10)	{$(13_10)		sprite_index = sEnemy2$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		sprite_index = sEnemy2$(13_10)	}	$(13_10)}$(13_10)if (hsp != 0) image_xscale = sign(hsp);"
vsp = vsp + grv;

//horizonbtal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}	
	hsp = -hsp;
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
if (! place_meeting(x,y+vsp,oWall))
{
	sprite_index = sEnemy2
	image_speed = 0;
	if(sign(vsp)>0) image_index = 1; else image_index = 0;
}	
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemy2
	}
	else
	{
		sprite_index = sEnemy2
	}	
}
if (hsp != 0) image_xscale = sign(hsp);