///@description Inicializando o game

width = 6;
height = 10;

offset = 32;
xstart = 88;
ystart = 216;

for(var i = 0; i < width; i++)
{
	for(var j = 0; j < height; j++)
	{
		instance_create_layer(offset * i + xstart, offset * j + ystart, 0, o_BackgroundTile);
		instance_create_layer(offset * i + xstart, offset * j + ystart, 0, o_Gem);
	}
}

alarm[0] = 20;