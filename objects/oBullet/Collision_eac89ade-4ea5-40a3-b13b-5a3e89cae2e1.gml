/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 310E2AF3
/// @DnDArgument : "code" "with (other)$(13_10){$(13_10)		hp--;$(13_10)		flash = 3;$(13_10)		hitfrom = other.direction;$(13_10)}$(13_10)$(13_10)instance_destroy()"
with (other)
{
		hp--;
		flash = 3;
		hitfrom = other.direction;
}

instance_destroy()