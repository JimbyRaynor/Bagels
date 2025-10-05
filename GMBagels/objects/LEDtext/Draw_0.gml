


ColourText(680,298,"Guess "+string(global.guessnumber),#98FB98,24,3,false);

if (global.errorRepeats == true)
{
	ColourText(880,340,"Error: repeated digits ",c_white,16,2,false);
}

ColourText(1200,10,"Game "+string(global.gamenumber),#98FB98,9,1,true);
ColourText(1200,20,"Total Guesses "+string(global.totalguesses),#98FB98,9,1,true);
var avg= global.totalguesses/global.gamenumber
var strn1 = string(round(avg))
var strn2 = string(frac(avg))
strn2 = string_char_at(strn2, 3); 
ColourText(1170,40,"Average",#98FB98,13,2,true);
ColourText(1270,35,strn1+"."+strn2,#98FB98,23,3,false);


printscreen();

printinputtext();

