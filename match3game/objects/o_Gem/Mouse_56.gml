/// @description Calculando Direção
if (isControlling)
{
	finalTouchPositionX = mouse_x;
	finalTouchPositionY = mouse_y;
	swipeDirection = point_direction(firstTouchPositionX, firstTouchPositionY, finalTouchPositionX, finalTouchPositionY);
	if ((swipeDirection > 315 || swipeDirection <= 45) && column < o_GameManager.width -1)
	{
		//direita
		 otherGem = instance_position(x + width, y, o_Gem);
		 otherGem.previousColumn = otherGem.column;
		 otherGem.previousRow = otherGem.row;
		 previousColumn = column;
		 previousRow = row;
		 otherGem.column -= 1;
		 column += 1;
	} else if (swipeDirection > 45 && swipeDirection <= 135 && row > 0)
	{
		//cima
		 otherGem = instance_position(x, y - width, o_Gem);
		 otherGem.previousColumn = otherGem.column;
		 otherGem.previousRow = otherGem.row;
		 previousColumn = column;
		 previousRow = row;
		 otherGem.row += 1;
		 row -= 1;
	} else if (swipeDirection > 135 && swipeDirection <= 225 && column > 0)
	{
		//esquerda
		 otherGem = instance_position(x - width, y, o_Gem);
		 otherGem.previousColumn = otherGem.column;
		 otherGem.previousRow = otherGem.row;
		 previousColumn = column;
		 previousRow = row;
		 otherGem.column += 1;
		 column -= 1;
	} else if (swipeDirection > 225 && swipeDirection <= 315 && row < o_GameManager.height - 1)
	{
		//baixo		
		 otherGem = instance_position(x, y + width, o_Gem);
		 otherGem.previousColumn = otherGem.column;
		 otherGem.previousRow = otherGem.row;
		 previousColumn = column;
		 previousRow = row;
		 otherGem.row -= 1;
		 row += 1;
	}
	isControlling = false;
	alarm[1] = 10;
}