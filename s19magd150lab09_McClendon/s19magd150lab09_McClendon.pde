import processing.video.*;
import processing.sound.*;
SoundFile file;
WhiteNoise noise;
Movie carMovie;
PImage img;
long lastTime = 0;
void setup(){
  size(720,480);
   // Create the noise generator
  noise = new WhiteNoise(this);
 noise.play();
  lastTime = millis();
  img = loadImage("TV static.jpg");
  
  // This obtains movie from data folder.
   carMovie = new Movie(this, "Mercedes Cars Road Trip.mov");
  carMovie.loop();
  //Create sound file
 file = new SoundFile(this, dataPath("shadydave-expressions-of-the-mind-piano-loop.wav"));
}
void movieEvent(Movie m) {
    m.read();
  
}
void draw(){
  // Displays the image card.
  image(img,0 ,0);
  img.resize(width,height);
  
// Makes the White noise generater.
  if(millis()-lastTime > 5000){
    noise.stop();
  } 
  //Makes the sound file.
    if(millis()-lastTime <= 5000){
     file.play(); 
    }

//This will make the carMovie.
  if ( millis() - lastTime > 5000 ) {
 
  image(carMovie,0 ,0,width,height);
  }

 }
