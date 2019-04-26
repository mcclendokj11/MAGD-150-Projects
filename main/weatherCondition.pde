class weatherCondition{
  private int Xp;
  private int Yp;
 weatherCondition(){
   Xp = 340;
   Yp = 400;
 }
  void cloud(){
    // This code produces a cloud.
    noStroke();
    fill(255);
    ellipse(Xp+50,Yp-20,90,60);
    ellipse(Xp+20,Yp,90,60);
    ellipse(Xp+80,Yp,90,60); 
  }
  
  void lightning(){
    // This helps create a lightning bolt under the cloud.
    stroke(255);
    line(Xp, Yp, Xp+60, Yp+60);
    line(Xp+60, Yp+60, Xp+20, Yp+100);
    line(Xp+20, Yp+100, Xp+45, Yp+130);
  }
  
  
  void rain(){
    // This makes a series of raindrops under the cloud. 
    fill(0,0,219);
    noStroke();
    ellipse(Xp+35,Yp+50,5,15);
    ellipse(Xp+70,Yp+50,5,15);
    ellipse(Xp+90,Yp+60,5,15);
    ellipse(Xp+20,Yp+50,5,15);
    ellipse(Xp+40,Yp+70,5,15);
  }
}
