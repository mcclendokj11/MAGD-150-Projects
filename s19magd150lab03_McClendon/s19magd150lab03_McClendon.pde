void setup(){
 size(1200,600); 
background(600,600);


}

void draw(){
  float f = 0.5;
  float s = f/2;
  background(600,600);
    
  int x = max(mouseX, pmouseX);
  int y = max(mouseY, pmouseY);
  noStroke();
  float d = dist(width/2, height/2, mouseX, mouseY);
  float maxDist = dist(0, 0, width/2, height/2);
  float gray = map(d, 0, maxDist, 0, 255);
  fill(gray);
  ellipse(s+mouseX,mouseY,200/2,150-50);
  ellipse(80*s+mouseX,100+mouseY,200/2,50*2);
  ellipse(160*s+mouseX,100*f+mouseY,200/2,50*2);
   println( "X position " + x );
   println("Y position " + y);

}
