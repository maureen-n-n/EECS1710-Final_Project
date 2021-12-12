class Note { 
  /** The class representing the Notes (rectangles that will drop down) which display when 
      a specific key (a,s,d,f,g) is played.
  **/
  int x,y,w,h;
  color colour;
  
 
  Note() {
    w=300;
    h=0;
  }
 
 
  void display() {
    noStroke();
    fill(colour);
    rect(x, y, w, h);
    // "speed" of note
    h+=50;
  }
    
  
}
