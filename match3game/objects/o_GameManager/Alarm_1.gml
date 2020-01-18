/// @description Preenchendo espaços
for (var i = 0; i < width; i++)
{
	for(var j = 0; j < height; j++)
	{
		var xPosition = i * offset + xstart;
		var yPosition = j * offset + ystart;
		if(!instance_position(xPosition, yPosition, o_Gem))
		{
			instance_create_layer(xPosition, yPosition, 0, o_Gem);
		}
	}
}
state = "Wait";