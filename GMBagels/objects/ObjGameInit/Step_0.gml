if (mouse_check_button_pressed(mb_left))
{
	var now = current_time;
	if (now-ClickTime < DoubleClickThreshold)
	{
		if (global.targetwidth == 1600)
		{
		window_set_rectangle(0, 0, 800, 450);
		global.targetwidth = 800;
		}
		else
		{
		 window_set_rectangle(0, 0, 1600, 900);
		  global.targetwidth = 1600;
		}
		
	}
	ClickTime  = now;
}
