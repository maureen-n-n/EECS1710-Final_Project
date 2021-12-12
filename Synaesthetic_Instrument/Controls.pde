void keyPressed() {
  //detect when space bar is pressed.
  if (key==' ') {
    // when the space bar is pressed, set play_beat to the opposite of whatever it originally was (works as a toggle)
    play_beat = !play_beat;
    if (play_beat){
      // if play_beat is true, loop beat
      beat.loop();   
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
  
  if (keyCode==65){
     // red bar (press a)
     playing_red=true;
  }
  
  if (keyCode==83){
      // blue bar (press s)
      playing_blue=true;
    }  
   
   if (keyCode==68){
     // green bar (press d)
     playing_green=true;
   }
 
}

void keyReleased() {
  if (keyCode==65){
    // red bar
    playing_red=false;
  }
  
  if (keyCode==83){
    // blue bar
    playing_blue=false;
  }
  
  if (keyCode==68){
     // green bar (press d)
     playing_green=false;
   }
  
  
  
 
}
