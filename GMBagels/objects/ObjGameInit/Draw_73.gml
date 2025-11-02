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
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(global.fntRetro3thin);
	draw_text(0,0,global.scrolltext);
	surface_reset_target();
}	  
