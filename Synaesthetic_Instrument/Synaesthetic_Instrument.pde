/** EECS1710 Final Project - Synaesthetic Instrument 
    ------------Maureen Navera, Dec 2021------------
    
    This project simulates an audiovisual instrument. By pressing the space bar, a beat starts playing
    and accompanying circles will randomly pop up on the screen. By pressing the up and down arrows, users
    can increase and decrease the rate at which the beat is being played (and therefore, the speed of the
    visuals will get slower and faster).
    
    By pressing on the a,s,d,f and g buttons on the keyboard, users can simulate something similar to a piano with tiles
    represented by rectangles that drop down when their respective button is pressed.
    
    Sound credits:
      beat.wav - https://freesound.org/people/YellowTree/sounds/422679/
      piano notes - https://freesound.org/people/pinkyfinger/packs/4409/
    
**/
//Importing Sounds Library and initializing new SoundFile variables
import processing.sound.*;
SoundFile beat, synth, c,d,e,f,g;


// initiialize all global variables
boolean play_beat=false;
boolean playing_red=false;
boolean playing_blue=false;
boolean playing_green=false;
boolean playing_yellow=false;
boolean playing_violet=false;

float beat_rate=1;
Beat newbeat;
Note red, blue, green, yellow, violet;

void setup() {
  size(1500, 1500, P3D);  
  textSize(30);
  newbeat = new Beat();
 
  //Initializing Red, Blue, Green, Yellow and Violet Notes
  // Red Note
  red = new Note();
  red.x=0;
  red.y=0;
  red.colour=color(#D84242);
  
  // Blue Note
  blue = new Note();
  blue.x=300;
  blue.y=0;
  blue.colour=color(#425CD8);
  
  // Green Note
  green = new Note();
  green.x=600;
  green.y=0;
  green.colour=color(#42D842);
  
  // Yellow Note
  yellow = new Note();
  yellow.x=900;
  yellow.y=0;
  yellow.colour=color(#FFD04D);
  
  // Violet Note
  violet = new Note();
  violet.x=1200;
  violet.y=0;
  violet.colour=color(#6D4DFF);
 
  // Initialize audio files
  beat = new SoundFile(this, "beat.wav");
  c = new SoundFile(this, "c.wav");
  c.amp(0.5);
  d = new SoundFile(this, "d.wav");
  d.amp(0.5);
  e = new SoundFile(this, "e.wav");
  e.amp(0.5);
  f = new SoundFile(this, "f.wav");
  f.amp(0.5);
  g = new SoundFile(this, "g.wav");
  g.amp(0.5);

  ellipseMode(CENTER);
  rectMode(CORNER);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(255);
  
  // see helper function below draw function
  display_notes();
  
  // text instructions 
  fill(0);
  text("press the space bar to toggle a beat on and off", width/2, height/2 - 50);
  text("Press the up and down arrows to control the rate of the beat.", width/2, height/2);
  text("Press the a, s, d, f and g keys to play notes!", width/2, height/2 + 50);
  text("original rate:" + beat_rate * 100 + "%!", 1300, 1400);
  
  
  if (play_beat){
    // have to display the newbeat here whenever play_beat is toggled to true
    newbeat.display();   
  }  
}

void display_notes(){
  // Function that determines whether or not playing_[colour] note is active, which controls the display of the specific note class
  if (playing_red){ 
    red.display();
  } else{  
    red.h=0;  
  }
  
  if (playing_blue){
    blue.display();
  } else{
    blue.h=0;
  }
  
  if (playing_green){
    green.display();
  } else{
    green.h=0;
  }
  
  if (playing_yellow){
    yellow.display();
  } else{
    yellow.h=0;
  }
  
  if (playing_violet){
    violet.display();
  } else{
    violet.h=0;
  }
}
