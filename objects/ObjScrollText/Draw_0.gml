if surface_exists(global.scrollsurface)
{	
  global.scroll_x += 1;
  if (global.scroll_x > surface_get_width(global.scrollsurface)) 
  {
    global.scroll_x = 0;
  }
 draw_surface_part(global.scrollsurface, global.scroll_x, 0, 1366, 50, x, y);
}