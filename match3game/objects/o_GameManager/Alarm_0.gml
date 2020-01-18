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

alarm[0] = 20;