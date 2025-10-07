global.totalguesses = 0
global.gamenumber = 0
global.guessnumber = 1
global.inputtext = ""
global.gameover = false;
global.errorRepeats = false;


GameLogicStart()
ds_list_clear(global.screentext);

room_goto(rmMain)

// Draw
//ColourText(x+15,y+15,"Clear Stats",#98FB98,20,3,false);
//draw_set_color(#98FB98);
 //draw_rectangle(x, y, x+250, y+48, true);