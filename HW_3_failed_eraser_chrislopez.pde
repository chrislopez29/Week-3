float x, y;
float easing = 0.2;
int toolSelect = 0;

void setup () {
  size (800, 600);
  background(252, 252, 252);
  fill (0, 0, 255);
  ellipse (54, 44, 59, 60);
  fill (0, 256, 186);
  rect (30, 92, 50, 50, 1);
  strokeWeight (4);
  line ( 100, 189, 14, 189);
  
  //fill (255, 255, 255);rect (0, 550, 50, 50); failed eraser tool :( maybe you can fix it :D
}

void draw() {
  if (mouseX > 54 && mouseX < 90 && mouseY> 44 && mouseY < 104) { //circle 
    toolSelect =1;
  }
  else if(mouseX > 11 && mouseX < 100 && mouseY> 92 && mouseY < 141) { //rect
  toolSelect =2;
  }
  else if (mouseX > 11 && mouseX < 101 && mouseY> 175 && mouseY < 295) { //line
  toolSelect =3;
  }
  //if (mouseX > 0 && mouseX < 50 && mouseY> 550 && mouseY < 600) { //eraser toolSelect =4; still failed eraser

  if (mousePressed) {
    if (toolSelect == 1) {//ellipse
      fill (0, 0, 255);
      strokeWeight (1);
      ellipse(mouseX, mouseY, 60, 60);
      
    } else if (toolSelect == 2) {//rect
      fill (0, 256, 186);
      strokeWeight (1);
      rect (mouseX-40, mouseY-20, 50, 50, 1);
      
    } else if (toolSelect == 3) {//line
      strokeWeight (4);
      line( mouseX, mouseY, pmouseX, pmouseY);
    
    }
  }
  }