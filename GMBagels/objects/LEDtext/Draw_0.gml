

// surface is created in script GlobalVar

if surface_exists(global.textsurface)
{	
draw_surface(global.textsurface,0,0)
}

ColourText(680,298,"Guess "+string(global.guessnumber),#98FB98,24,3,false);

printscreen();

printinputtext();

