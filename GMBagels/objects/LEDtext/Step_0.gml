for (var i = 0; i <= 9; i++) {
    if (keyboard_check_pressed(ord(string(i))))
	{
	if (string_length(global.inputtext) == 3)
	 {
		  global.inputtext = ""
	 }
	 global.inputcolour = #98FB98
	 global.inputtext = global.inputtext + string(i);	
	 if (string_length(global.inputtext) == 3)
	 {
		  convertstringtodigits(global.inputtext)
		  if (userrepeatfound())
                {
					global.extrahelp = true
					global.inputcolour = c_gray
                }
		else
		{
			global.extrahelp = false
			 global.guessnumber++
			 global.inputcolour = c_gray
			 GameLogic()
		}
	 }
    }
}