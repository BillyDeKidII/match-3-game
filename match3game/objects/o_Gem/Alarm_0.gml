/// @description Verificando Pares
var gem1, gem2, gem3, gem4;

// Verificando Horizontalmente
gem1 = instance_position(x - width, y, o_Gem);
gem2 = instance_position(x + width, y, o_Gem);
if (instance_exists(gem1) && instance_exists(gem2))
{
	if(gem1.image_index == id.image_index && gem2.image_index == id.image_index)
	{
		id.image_alpha = .2;
		gem1.image_alpha = .2;
		gem2.image_alpha = .2;
	}
}

// Verificando Verticalmente
gem3 = instance_position(x, y - width, o_Gem);
gem4 = instance_position(x, y + width, o_Gem);
if (instance_exists(gem3) && instance_exists(gem4))
{
	if(gem3.image_index == id.image_index && gem4.image_index == id.image_index)
	{
		id.image_alpha = .2;
		gem3.image_alpha = .2;
		gem4.image_alpha = .2;
	}
}

alarm[0] = 5;