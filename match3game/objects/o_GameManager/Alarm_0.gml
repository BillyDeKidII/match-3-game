/// @description Quebrando gemas e fazendo colunas cairem
with(o_Gem)
{
	if(image_alpha == .2)
	{
		with(o_Gem)
		{
			if(column == other.column && row < other.row)
			{
				row++;
			}
		}
		instance_destroy();
	}
}
state = "Fill";
alarm[1] = 30;
//alarm[0] = 20;