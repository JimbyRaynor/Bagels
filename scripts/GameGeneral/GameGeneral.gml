
function SaveState()
{
ini_open("bagelsdata.ini");
ini_write_real("stats","TotalGuesses",global.totalguesses )
ini_write_real("stats","TotalGames",global.gamenumber )
ini_close()
}


function LoadState()
{
ini_open("bagelsdata.ini");
global.totalguesses=ini_read_real("stats","TotalGuesses",0)
global.gamenumber = ini_read_real("stats","TotalGames",0 )
ini_close()
}





function GameGeneral(){

}