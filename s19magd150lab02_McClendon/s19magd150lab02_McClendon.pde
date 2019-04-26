
size(600, 600);
background(200);


//ballon #1: Triangle red
colorMode(HSB, 360, 100, 100,100);
fill(360,100, 100, 100);
triangle(430, 175, 458, 120, 486, 175);
//string
noFill();
bezier(460, 175, 310, 310, 540, 390, 515, 280);
//ballon #2: rect blue
colorMode(RGB,255,255,255,100);
fill(0, 0, 255);
beginShape();
vertex(240, 240);
vertex(340, 240);
vertex(340, 340);
vertex(240, 340);
endShape(CLOSE);

//string
noFill();
bezier(280, 340, 270, 310, 290, 490, 215, 410);

//ballon #3: Quad yellow
fill(#FFFF00);
quad(168, 151, 206, 140, 189, 183, 150, 196);
//string
noFill();
bezier(150, 196, 110, 310, 190, 290, 115, 380);

//ballon #4: circle green
colorMode(RGB,255,255,255,100);
fill(0, 255, 0);
ellipseMode(CENTER);
ellipse(300, 170, 60, 60);
//string
noFill();
bezier(271, 170, 140, 210, 290, 290, 125, 380);
