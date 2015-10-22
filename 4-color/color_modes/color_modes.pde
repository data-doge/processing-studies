int scaleFactor = 1;

void setup() {
  size(100 * scaleFactor, 100 * scaleFactor);
}

void draw() {
  scale(scaleFactor);
  colorMode(HSB, 360, 100, 100);

  background(188, 43, 79);
  noStroke();
  fill(129, 130, 87);
  rect(20, 20, 30, 60);
  fill(129, 130, 87);
  rect(50, 20, 30, 60);
}
