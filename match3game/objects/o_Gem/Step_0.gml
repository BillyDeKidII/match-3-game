/// @description Movimento
targetX = column * width + 88;
targetY = row * width + 216;

if (point_distance(x, y, targetX, y) > 2)
{
	x = lerp(x, targetX, .2);
}else 
{
	x = targetX;
}

if (point_distance(x, y, x, targetY) > 2)
{
	y = lerp(y, targetY, .2);
}else 
{
	y = targetY;
}