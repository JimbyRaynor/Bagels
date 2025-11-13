// all scripts like GlobalVar are exceuted first, before anything else in the game

LoadState(); // defined in script GameGeneral
 // loads total number of guesses, etc
 
GameLogicStart(); // defined in script GameLogic
// start the game


ClickTime = 0;
DoubleClickThreshold = 250;

