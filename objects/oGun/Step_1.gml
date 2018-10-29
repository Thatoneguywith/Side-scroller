/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78155C8A
/// @DnDArgument : "code" "x = oPlayer.x;$(13_10)y = oPlayer.y;$(13_10)$(13_10)image_angle = point_direction(x,y,mouse_x,mouse_y);$(13_10)$(13_10)firingdelay = firingdelay - 1;$(13_10)recoil = max(0,recoil - 1);$(13_10)$(13_10)if (mouse_check_button(mb_left)) && (firingdelay < 0)$(13_10){$(13_10)	recoil = 4;$(13_10)	firingdelay = 5;$(13_10)	with(instance_create_layer(x,y,"Bullets",oBullet))$(13_10)	{$(13_10)		speed = 25;$(13_10)		direction = other.image_angle + random_range(-3,3);$(13_10)		image_angle = direction;$(13_10)	}$(13_10)	$(13_10)}$(13_10)x = x - lengthdir_x(recoil,image_angle)$(13_10)y = y - lengthdir_y(recoil,image_angle)"
x = oPlayer.x;
y = oPlayer.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 5;
	with(instance_create_layer(x,y,"Bullets",oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	
}
x = x - lengthdir_x(recoil,image_angle)
y = y - lengthdir_y(recoil,image_angle)