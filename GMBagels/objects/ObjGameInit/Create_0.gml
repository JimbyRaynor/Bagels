GlobalVar()
ini_open("bagelsdata.ini");
global.totalguesses=ini_read_real("stats","TotalGuesses",1)
global.gamenumber = ini_read_real("stats","TotalGames",0 )
ini_close()


//global.totalguesses = 0
//global.gamenumber = 0

global.gamenumber++