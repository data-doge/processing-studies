int opacity = 255;
char[] red = {346, 76, 99};
char[] green = {93, 50, 88};
char[] yellow = {59, 13, 99};
char[] teal = {145, 24, 92};
char[] blue = {177, 99, 67};
char[][] colors = {red, green, yellow, teal, blue};
int scaleFactor = 4;
boolean wut = false;

void setup () {
  size(100 * scaleFactor, 100 * scaleFactor);
}

void draw () {
  strokeWeight(12);
  scale(scaleFactor);
  background(0, 0, 99);
  colorMode(HSB, 360, 100, 100);
 
  for(int i = 0; i < 5; i++) {
    char[] rgb = colors[i];
    stroke(rgb[0], rgb[1], rgb[2]);
    int x1 = 20 * i, 
        y1 = 20,
        x2 = 20 * (i + 1),
        y2 = 80;
    line(x1, y1, x2, y2);
  }
}
