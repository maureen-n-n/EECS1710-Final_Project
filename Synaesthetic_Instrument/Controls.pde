void keyPressed() {
  // Actions controlling BEAT
  //detect when space bar is pressed.
  if (key==' ') {
    // when the space bar is pressed, set play_beat to the opposite of whatever it originally was (works as a toggle)
    play_beat = !play_beat;
    if (play_beat){
      // if play_beat set the rate of the beat to whatever beat_rate is   
      beat.rate(beat_rate);
    } else {
      // else, stop playing beat (toggled off)
      beat.stop();
    }  
  } 
  // detect when up and down arrow keys are pressed (to set rate of beat)
  if (key == CODED) {
    if (keyCode == UP){
      beat_rate += 0.25;
      beat.rate(beat_rate);
      newbeat.sec = int(newbeat.sec - (newbeat.sec * 0.25));
      println(newbeat.sec);
    } else if (keyCode == DOWN){
        beat_rate -= 0.25;
        beat.rate(beat_rate);
        newbeat.sec = int(newbeat.sec + (newbeat.sec * 0.25));
        println(newbeat.sec);
    }
  }
  
  // Actions controlling NOTES
  if (keyCode==65){
    // red bar (press a)
    c.play();
    playing_red=true;
  }
  
  if (keyCode==83){
    // blue bar (press s)
    d.play();
    playing_blue=true;
  }  
   
  if (keyCode==68){
    // green bar (press d)
    e.play();
    playing_green=true;
   }
  
  if (keyCode==70){
    //yellow bar (press f)
    f.play();
    playing_yellow=true;
  }
  
  if (keyCode==71){
    //violet bar (press g)
    g.play();
    playing_violet=true;
  }
 
}

void keyReleased() {
  if (keyCode==65){
    // red bar
    c.stop();
    playing_red=false;
  }
  
  if (keyCode==83){
    // blue bar
    d.stop();
    playing_blue=false;
  }
  
  if (keyCode==68){
    // green bar (press d)
    e.stop();
    playing_green=false;
  }
   
   if (keyCode==70){
    // yellow bar (press f)
    f.stop();
    playing_yellow=false;
  }
  
  if (keyCode==71){
    //violet bar (press g)
    g.stop();
    playing_violet=false;
  }

}
