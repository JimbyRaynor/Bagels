


function ColourChar(xloc, yloc, coord_array, mycolor,charsize,solid) {
    for (var i = 0; i < array_length(coord_array); i++) 
	{
        var xs = xloc+coord_array[i][0] * charsize;
        var ys = yloc+ coord_array[i][1] * charsize;
		draw_set_color(c_black);
		//draw_rectangle(xs, ys, xs + charsize, ys + charsize, false);	
		draw_set_color(mycolor);
		if (solid == true)
		{
        draw_rectangle(xs, ys, xs + charsize, ys + charsize, false);
		}
		else
		{
		   if (charsize ==2)
	     	      {  draw_rectangle(xs+1, ys+1, xs + charsize, ys + charsize, false);}
		  else if (charsize == 3)
		         { draw_rectangle(xs+1, ys+1, xs + charsize-1, ys + charsize-1,true) }
		 else if (charsize >= 4)
		          { draw_rectangle(xs+1, ys+1, xs + charsize-1, ys + charsize-1,false) }
	   }
    }
}


function ColourText(xloc, ys, mytext, colour, charwidth,charsize,solid)
{
    var digits = [global.ZERO, global.ONE, global.TWO, global.THREE, global.FOUR, global.FIVE, global.SIX, global.SEVEN, global.EIGHT, global.NINE];
    mytext = string_upper(mytext);
    var AdjustPos = 0;
    var PlusCount = 0;
    
    var charactermap = [global.charA, global.charB, global.charC, global.charD, global.charE, global.charF, global.charG, global.charH, global.charI, global.charJ, global.charK, global.charL,
                        global.charM, global.charN, global.charO, global.charP, global.charQ, global.charR, global.charS, global.charT, global.charU, global.charV, global.charW, global.charX,
                        global.charY, global.charZ];

    for (var i = 0; i < string_length(mytext); i++) {
        var c = string_char_at(mytext, i + 1); // GameMaker strings are 1-indexed

        if (c == "M" || c == "W" || c == "V") {
            AdjustPos += charwidth / 8;
        }
        if (c == "I" || c == "(" || c == ")") {
            AdjustPos -= charwidth / 8;
        }

        if (c != " ") {
            xs = xloc +  i*charwidth + AdjustPos;

            switch (c) {
                case "0": case "1": case "2": case "3": case "4":
                case "5": case "6": case "7": case "8": case "9":
                    ColourChar( xs, ys, digits[real(c)], colour,charsize,solid);
                    break;
                case "%":
                    ColourChar( xs, ys, charPercent, colour,charsize,solid);
                    break;
                case ".":
                    AdjustPos -= 2 * charwidth / 8;
					ColourChar( xs, ys, global.charDot, colour,charsize,solid);
                    break;
                case ":":
                    AdjustPos -= 2 * charwidth / 8;
					xs = xs - 2 * charwidth / 8 
					ColourChar( xs, ys, global.charColon, colour,charsize,solid);
                    break;
                case "+":
                   // var newcolour = colour;
                   // if (multicolour && PlusCount < array_length(plusorder)) {
                  //      newcolour = plusorder[PlusCount];
                   // }
				   ColourChar( xs, ys, PLUS, colour,charsize,solid);
                    PlusCount += 1;
                    break;
                case "*":
                    createCharBlockColour2(canvas, xpos, y, colour, TIMES, LEDpoints, solid, bg);
                    break;
                case "?":
                    createCharBlockColour2(canvas, xpos, y, colour, charQuestionMark, LEDpoints, solid, bg);
                    break;
                case "(":
				    ColourChar( xs, ys, global.LEFTBRACKET, colour,charsize,solid);
                    break;
                case ")":
				    ColourChar( xs, ys, global.RIGHTBRACKET, colour,charsize,solid);
                    break;
                case "=":
                    createCharBlockColour2(canvas, xpos, y, colour, EQUALS, LEDpoints, solid, bg);
                    break;
                default:
                    var index = ord(c) - 65;
                    if (index >= 0 && index < array_length(charactermap)) {
						ColourChar( xs, ys, charactermap[index], colour, charsize,solid);
                    }
                    break;
            }
        }

        if (c == "I" || c == "(" || c == ")") {
            AdjustPos -= charwidth / 8;
        }
    }
}

function printscreen()
{
	   var startline = 0
	   linestoprint = ds_list_size(global.screentext)
	   if (linestoprint > 19)
	   {
		   startline =  linestoprint - 19
	   }
	    for (var i = startline; i < linestoprint; i++) 
		{
			ColourText(20,200+(i-startline)*30,ds_list_find_value(global.screentext, i),#98FB98,26,3,false);
		}
}

