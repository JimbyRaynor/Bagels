
ColourText(10,70,"BAGELS",#98FB98,78,11,false);

ColourText(500,70,"instructions",#98FB98,24,3,false);
ColourText(500,100,"I am thinking of a three digit number",c_white,16,2,false);
ColourText(500,120,"Try to guess my number",c_white,16,2,false);
ColourText(500,140,"I will give you clues as follows",c_white,16,2,false);
ColourText(500,160,"pico  -  one digit correct but in the wrong position",c_white,16,2,false);
ColourText(500,180,"fermi  - one digit correct in the correct position",c_white,16,2,false);
ColourText(500,200,"bagels - no digits correct",c_white,16,2,false);

ColourText(660,330,"Input three digits from 0 to 9 using your keyboard",#98FB98,14,2,false);

ColourText(660,350,"First digit is not 0",#90EE90,14,2,false);

ColourText(660,298,"Guess "+string(global.guessnumber),#5050FF,24,3,true);

ColourText(500,220,"O.K. I have a number in mind.",#98FB98,16,2,false);


if (global.extrahelp == true)
{
	ColourText(660,380,"Oh! I forgot to tell you that the number",#98FB98,16,2,false);
	ColourText(660,400,"I have in mind has no two digits the same",#98FB98,16,2,false);
}

printscreen();

printinputtext();

