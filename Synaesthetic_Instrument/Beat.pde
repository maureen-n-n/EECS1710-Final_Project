class Beat { 
  /** The class representing the circles which display when the beat is played 
  (after toggling on and off using the space bar**/
  float diam, x, y;
 
  //Color
  color strokeColor;
  
  int timer, max, sec;
 
  Beat() {
    timer=millis();
    max=0; 
    sec = 1090;
    //strokeColor = color(random(255), random(0), random(200));
  }
 
 
  void display() {
    stroke(strokeColor);
    strokeWeight(15);
    noFill();
    ellipse (x, y, diam, diam);  
    diam=diam+10;  

    if(millis()-timer>sec) {
      //set x and y here 
      diam=20;
      x = random(width);
      y = random(height);
      max=max+1; 
      timer = millis();
      strokeColor = color(random(255), random(255), random(255));
    }
    
  }
}
