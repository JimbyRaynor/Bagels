
ColourText(10,70,"BAGELS",#98FB98,78,11,false);

var dy = -50
var dx = 40
ColourText(500+dx,70+dy,"instructions",c_white,24,3,false);
ColourText(500+dx,100+dy,"I am thinking of a three digit number",c_white,16,2,false);
ColourText(500+dx,120+dy,"Try to guess my number",c_white,16,2,false);
ColourText(500+dx,140+dy,"I will give you clues as follows",c_white,16,2,false);
ColourText(500+dx,160+dy,"pico  -  one digit correct but in the wrong position",c_white,16,2,false);
ColourText(500+dx,180+dy,"fermi  - one digit correct in the correct position",c_white,16,2,false);
ColourText(500+dx,200+dy,"bagels - no digits correct",c_white,16,2,false);
ColourText(500+dx,220+dy,"O.K. I have a number in mind.",#98FB98,16,2,false);
ColourText(500+dx,240+dy,"Input three digits from 0 to 9",#98FB98,16,2,false);
ColourText(500+dx,260+dy,"First digit is not 0",#90EE90,16,2,false);

ColourText(680,298,"Guess "+string(global.guessnumber),c_white,24,3,false);




if (global.extrahelp == true)
{
	ColourText(660,660,"Oh! I forgot to tell you that the number",#98FB98,16,2,false);
	ColourText(660,680,"I have in mind has no two digits the same",#98FB98,16,2,false);
}

printscreen();

printinputtext();

