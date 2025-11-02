
draw_set_font(global.fntRetro3);
draw_text(680,298,"GUESS "+string(global.guessnumber));


//draw_set_colour(c_green);
draw_text(10,100,"GAMES WON "+string(global.gamenumber));
draw_text(10,130,"TOTAL GUESSES "+string(global.totalguesses));
var avg= global.totalguesses/global.gamenumber
var strn1 = string(round(avg))
var strn2 = string(frac(avg))
strn2 = string_char_at(strn2, 3); 
draw_text(10,160,"AVERAGE "+strn1+"."+strn2);

var x0 = 1050
draw_set_font(fntOpenSansGlow);
draw_set_colour(c_white);
draw_text(x0,10,"INSTRUCTIONS");

draw_set_font(fntOpenSans);
draw_set_color(#98FB98);
draw_text(x0,40,"I am thinking of a three digit number");
draw_text(x0,70,"Try to guess my number");
draw_text(x0,100,"I will give you clues as follows:");
draw_text(x0,130,"PICO       = One digit correct but in the wrong position");
draw_text(x0,160,"FERMI    = One digit correct in the correct position");
draw_text(x0,190,"BAGELS = No digits correct");

draw_text(x0,250,"Use the Number Pad to enter three digits:");
draw_text(x0,280,"       - No two digits are the same");
draw_text(x0,310,"       - First digit is not zero");

draw_text(x0,400,"Press  F10  for fullscreen mode  (ESC to exit)");

if (global.errorRepeats == true)
{
	ColourText(880,340,"Error: repeated digits ",c_white,16,2,false);
}


printinputtext();

