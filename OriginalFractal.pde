
public void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}
public void draw() {
  background(0);
  frameRate(30);
  float a = mouseY;  
  if (a <150) {
    a=150;
  } else {
    a = mouseY;
  }
  fill(0);
  stroke((int)mouseX, mouseY/2, mouseX);
  myFractal(250, 250, (int)a);
}
public void myFractal(int x, int y, int s) {
  ellipse(x, y, s, s);
  if (s>10) {
    myFractal(x-s/4, y, s/2);
    myFractal(x+s/4, y, s/2);
    myFractal(x, y+s/4, s/2);
    myFractal(x, y-s/4, s/2);
  }
}