/// @description Verificando pares futuros
if(instance_exists(otherGem))
{
	if(id.image_alpha > .2 && otherGem.image_alpha > .2)
	{
		column = previousColumn;
		row = previousRow;
		otherGem.column = otherGem.previousColumn;
		otherGem.row = otherGem.previousRow;
	}
}