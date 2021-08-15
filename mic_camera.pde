import processing.video.* ;
import ddf.minim.*;
Minim minim;
AudioInput in;  
Capture video ; 
void setup( ) {
  size(640, 480) ; 
  video = new Capture(this, 640, 480, 30) ;
  video.start( ) ; 
  minim = new Minim(this);
  in = minim.getLineIn();
  background(0) ;
}
void draw( ) {
  if (video.available( )) video.read( ) ; 
  loadPixels( ) ; 
  video.loadPixels( ) ;
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      int loc = x + y*video.width ; 
      float r, g, b ;
      r = red (video.pixels[loc]) ; 
      g = green (video.pixels[loc]) ; 
      b = blue (video.pixels[loc]) ;
      float maxdist = 100 ; 
      
      float d = dist(x, y, mouseX, mouseY) ; 

      float adjustbrightness = ((in.mix.get(0)*400)-d)/maxdist; 
      r *= adjustbrightness ; 
      g *= adjustbrightness ; 
      b *= adjustbrightness ;
      r = constrain(r, 0, 255) ; 
      g = constrain(g, 0, 255) ; 
      b = constrain(b, 0, 255) ;
      color c = color(r, g, b) ; 
      pixels[loc] = c ;
    }
  }
  updatePixels( ) ;
}
