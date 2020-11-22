//Limacon, Gregor Schneider, Untergruppenbach, 08.05.2017

void setup() {
  fullScreen();
}
void draw() {
  background(0);
  float s = height/2;
  translate(width/2, height/2);
  beginShape();
  stroke(255);
  noFill();
  float a = mouseX;
  float b = mouseY;
  float c = a-b;
  for (float t = 0; t <= 360; t += 1) {
    float x = (a + c*cos(radians(t))) * cos(radians(t));
    float y = (a + c*cos(radians(t))) * sin(radians(t));
    vertex(x, y);
  }
  endShape();
} 