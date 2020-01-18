/// @description Máquina de Estados
switch(state)
{
	case "Fill":
	
	break;
	
	case "Wait":
	
	break;
	
	case "Destroy":
	alarm[0] = 20;
	state = "Refill";
	break;
	
	case "Refill":
	
	break;
}