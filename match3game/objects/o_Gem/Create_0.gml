///@description Iniciando Variaveis
image_speed = 0;
image_index = irandom(8);
depth = -y;

//Posição Gemas
width = 32;

column = (x - 88) / width;
row = (y - 216) / width;

//Movimento Gemas
targetX = x;
targetY = y;

firstTouchPositionX = x;
firstTouchPositionY = y;
finalTouchPositionX = x;
finalTouchPositionY = y;
swipeDirection = noone;
isControlling = false;