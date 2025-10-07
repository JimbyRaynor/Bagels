function repeatfound(i)
{
    for (var j = 1; j <= i - 1; j++)
    {
        if (global.A[i] == global.A[j])
        {
            return true;
        }
    }
    return false;
}


function userrepeatfound()
{
    if (global.B[1] == global.B[2] or global.B[1] == global.B[3] or global.B[2] == global.B[3])
    {
        return true;
    }
    else
    {
        return false;
    }
}

function convertstringtodigits(ad)
{
    for (var i = 1; i <= 3; i++)
    {
        global.B[i] = ord(string_char_at(ad,i));
        if (global.B[i] > 57)
            return false;
        if (global.B[i] < 48)
            return false;
        global.B[i] = global.B[i] - 48;
    }
    return true;
}

function printinputtext()
{
  ColourText(700,330,global.inputtext,c_white,48,6,false);
}

function addtext(mytext)
{
	ds_list_add(global.screentext, mytext);
}


function GameLogicStart()
{
randomize();

global.A[1] = irandom_range(1, 9); // First digit not 0
for (var i = 2; i <= 3; i++) 
     {
        global.A[i] = irandom(9); // Random digit from 0 to 9
        while (repeatfound(i)) 
		{
            global.A[i] = irandom(9); // Retry until it's not a repeat
        }
    }
}


function GameLogic()
{
var c = 0; // number of correct digits, unordered
var d = 0; // number of correct digits, ordered
for (var j = 1; j <= 2; j++)
            {
                if (global.A[j + 1] == global.B[j])
                {
                    c++;
                }
                if (global.B[j + 1] == global.A[j])
                {
                    c++;
                }
            }
            if (global.A[1] == global.B[3])
            {
                c++;
            }
            if (global.A[3] == global.B[1])
            {
                c++;
            }
            for (var j = 1; j <= 3; j++)
            {
                if (global.A[j] == global.B[j])
                {
                    d++;
                }
            }
			var outputtext = ""
            if (c == 0 and d == 0)
            {
               outputtext = "Bagels"
            }
            for (var j = 1; j <= c; j++)
            {
                outputtext = outputtext +"Pico "
            }
            for (var j = 1; j <= d; j++)
            {
               outputtext = outputtext + "Fermi ";
            }
			 addtext( global.inputtext + ":"+outputtext)

			if (d ==  3)    // d == 3
            {
                addtext("You got it")
				addtext("in "+string(global.guessnumber)+ " guesses.")
				global.gameover = true
				global.gamenumber++
				 global.totalguesses++
            }
}

function EnterNumber(numstr)
{
      if (global.gameover == true) {return}
      if (string_length(global.inputtext) == 3)
	   { global.inputtext = "" }
	 global.inputcolour = #98FB98
	 global.inputtext = global.inputtext + numstr	
	 if (string_length(global.inputtext) == 3)
	 {
		  convertstringtodigits(global.inputtext)
		  if (userrepeatfound())
                {
					global.inputcolour = c_gray
					global.errorRepeats = true;
                }
		else
		      {
			    global.errorRepeats = false;
			    global.inputcolour = c_gray;
				SaveState()
			    GameLogic()
				if (global.gameover ==  false)
				    {
					 global.guessnumber++
					 global.totalguesses++
					 }
		       }
	 }
}

