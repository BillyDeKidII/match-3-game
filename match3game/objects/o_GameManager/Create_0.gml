/// Inicializando o game

width = 10;
height = 14;

offset = 32;
xstart = 26;
ystart = 144;

for(var i = 0; i < width; i++)
{
	for(var j = 0; j < height; j++)
	{
		instance_create_layer(offset * i + xstart, offset * j + ystart, 0, o_BackgroundTile);
	}
}