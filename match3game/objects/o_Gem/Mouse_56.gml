/// @description Calculando Direção
if (isControlling)
{
	finalTouchPositionX = mouse_x;
	finalTouchPositionY = mouse_y;
	swipeDirection = point_direction(firstTouchPositionX, firstTouchPositionY, finalTouchPositionX, finalTouchPositionY);
	if ((swipeDirection > 315 || swipeDirection <= 45) && column < o_GameManager.width -1)
	{
		//direita
		var otherGem = instance_position(x + width, y, o_Gem);
		otherGem.column -= 1;
		column += 1;
	} else if (swipeDirection > 45 && swipeDirection <= 135 && row > 0)
	{
		//cima
		var otherGem = instance_position(x, y - width, o_Gem);
		otherGem.row += 1;
		row -= 1;
	} else if (swipeDirection > 135 && swipeDirection <= 225 && column > 0)
	{
		//esquerda
		var otherGem = instance_position(x - width, y, o_Gem);
		otherGem.column += 1;
		column -= 1;
	} else if (swipeDirection > 225 && swipeDirection <= 315 && row < o_GameManager.height - 1)
	{
		//baixo		
		var otherGem = instance_position(x, y + width, o_Gem);
		otherGem.row -= 1;
		row += 1;
	}
	isControlling = false;
	otherGem = noone;
}