int centerX;
int centerY;
int scaleFactor = 4;

void setup () {
  size(200 * scaleFactor, 200 * scaleFactor);
  ellipseMode(RADIUS);
  rectMode(RADIUS);
}

void draw () {
  scale(scaleFactor);
  strokeWeight(2);

  // upper left box
  setRectOrigin(50, 50);
  fill(255);
  rect(centerX, centerY, 50, 50);
  fill(0);
  ellipse(centerX, centerY, 25, 25);

  // upper right box
  setRectOrigin(150, 50);
  fill(255);
  rect(centerX, centerY, 50, 50);
  strokeCap(ROUND);
  line(100, 0, 200, 100);
  line(133, 0, 133, 100);
  line(167, 0, 167, 100);
  line(100, 25, 200, 25);

  // lower left box
  setRectOrigin(50, 150);
  rect(centerX, centerY, 50, 50);
  strokeCap(SQUARE);
  for (int i = 10; i < 100; i+=10) {
    line(i, 110, i, 190);
  }

  // lower right box
  setRectOrigin(150, 150);
  rect(centerX, centerY, 50, 50);
  fill(0);
  ellipse(centerX, centerY, 45, 45);
  fill(255);
  ellipse(centerX, centerY, 15, 15);
  fill(0);
  ellipse(centerX, centerY, 4, 4);
}

void setRectOrigin (int x, int y) {
  centerX = x;
  centerY = y;
}
