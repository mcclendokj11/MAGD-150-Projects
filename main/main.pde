weatherCondition wc;
void setup(){
  size(800, 800);
  //This piece of code initializes the class so it can be used.
  wc = new weatherCondition();
}

void draw(){
 wc.cloud();
 wc.lightning();
 wc.rain();
}
