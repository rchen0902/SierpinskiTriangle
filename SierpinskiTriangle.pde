public void setup() {
  size(500,500);
}

public void draw() {
  background(0);
  fill(random(255), random(255), random(255));
  sierpinski(0,500,mouseX);
}

public void mouseDragged()//optional
{
//included in draw function
}

public void sierpinski(int x, int y, int z) {
if (z <= 20) {
  stroke(255);
  strokeWeight(1);
  triangle(x, y, x+z, y, x+z/2, y-z);
}
else {
  sierpinski(x,y,z/2);
  sierpinski(x+z/2,y,z/2);
  sierpinski(x+z/4,y-z/2,z/2);
}
}
