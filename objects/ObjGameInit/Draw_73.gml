// create surfaces, and recreate if window minized, etc

if (!surface_exists(global.retroscreensurface))
     {
       global.retroscreensurface = surface_create(640, 570);
      printscreen();
	  }
	  
	  
if (!surface_exists(global.scrollsurface))
{
   global.scrollsurface = surface_create(string_length(global.scrolltext)*24	, 50);
   //show_debug_message(surface_get_width(global.scrollsurface))
	surface_set_target(global.scrollsurface);
    ColourText(0,0,global.scrolltext,#98FB98,24,3,false);	
	surface_reset_target();
}	  