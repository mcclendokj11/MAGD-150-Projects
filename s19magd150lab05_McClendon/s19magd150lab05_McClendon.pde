int rectX = 210;
int rectY = 370;
int rectSize = 25;
int circleX = 380; 
int circleY = 380; 
int circleSize = 25;
color rectHighlight, circleHighlight;
 color rectColor, circleColor, baseColor;
 color currentColor;
boolean circButton = true;
boolean rectButton = false;

void setup(){
background(255);
size(800,800);
 rectColor = color(0);
  rectHighlight = color(51);
  circleColor = color(255);
  circleHighlight = color(204);
  baseColor = color(0);
  currentColor = baseColor;
ellipseMode(CENTER);
}

void draw(){
  background(201);
  update(mouseX, mouseX);

  //antenna
  line(180+60,180+20,100+60,100+20);
  //TV box
  fill(105,64,5);
  rect(200, 200, 200, 200);
  fill(currentColor); 
  rect(240, 240, 120, 120);

 if (circButton) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
    //circle button
 ellipse(circleX, circleY, circleSize, circleSize);
 
    if (rectButton) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  //rect button
  rect(rectX, rectY, rectSize, rectSize);
  // "on" text
  text("ON", circleX-10, circleY+5);
  // "off" text
  fill(255);
  text("OFF", rectX+1, rectY+18);
}
 
void update(int x, int y) {
  if ( circButton(circleX, circleY, circleSize) ) {
    circButton = true;
    rectButton = false;
  } else if ( rectButton(rectX, rectY, rectSize, rectSize) ) {
    rectButton = true;
    circButton = false;
  } else {
    circButton = rectButton = false;
  }
}

void mousePressed() {
  if (circButton) {
   currentColor = circleColor;
  }
  if (rectButton) {
    currentColor = rectColor;
  }
}
boolean circButton(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean rectButton(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
