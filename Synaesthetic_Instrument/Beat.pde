class Beat { 
  float diam, x, y;
 
  //Color
  color strokeColor;
  
  int timer, max;
 
  Beat() {
    timer=millis();
    max=0; 
  }
 
 
  void display() {
    stroke(strokeColor);
    strokeWeight(15);
    noFill();
    ellipse (x, y, diam, diam); 
    diam=diam+10;  

    if(millis()-timer>1070) {
      //set x and y here
      diam=20;
      x = random(width);
      y = random(height);
      max=max+1; 
      timer = millis(); 
    }
    
  }
}
