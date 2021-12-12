class Note { 
  /** The class representing the Notes (rectangles that will drop down) which display when 
      a specific key (a,s,d,f,g) is played.
  **/
  int x,y,w,h;
  color colour;
  int transparency;
  float dtrans=-0.01;
  
 
  Note() {
    w=300;
    h=0;
    transparency=1;
  }
 
 
  void display() {
    noStroke();
    
    float a = map(transparency, 0, 1, 0, 255);
    fill(colour, a);
    
    
    rect(x, y, w, h);
    // "speed" of note
    h+=50;
  }
  
  void disappear(){
    transparency += dtrans;

    if (transparency < 0) {
      dtrans = -dtrans;
    } else if (transparency > 1) {
      dtrans = -dtrans;
    }
    }
    
  
}
