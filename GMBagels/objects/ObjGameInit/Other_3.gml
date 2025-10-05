ini_open("bagelsdata.ini");
ini_write_real("stats","TotalGuesses",global.totalguesses )
ini_write_real("stats","TotalGames",global.gamenumber )
ini_close()