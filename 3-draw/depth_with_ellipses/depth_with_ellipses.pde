int maxScaleFactor = 5;
int originX = 50;
int originY = 50;
int stepSize = 1;
int randomness = 1;

float scaleFactor = maxScaleFactor;
boolean growing = false;
float growthStepSize = 0.01;

void setup () {
  size(100 * maxScaleFactor, 100 * maxScaleFactor);
  ellipseMode(RADIUS);
  background(0);
  strokeWeight(2.0 / maxScaleFactor);
}

void draw () {
  if (growing) {
    scaleFactor += growthStepSize * maxScaleFactor;
  } else {
    scaleFactor -= growthStepSize * maxScaleFactor;
  }
  
  scale(scaleFactor);
  for (int i = 0; i < 50; i += stepSize) {
    float centerX = originX + i + random(randomness);
    float centerY = originY + i + random(randomness);
    int radius = originX - stepSize - i;
    ellipse(centerX, centerY, radius, radius);
  }
  
  if (scaleFactor >= maxScaleFactor || scaleFactor <= 0) {
    growing = !growing;
  }
}
