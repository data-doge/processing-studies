int opacity = 255;
char[] red = {222, 57, 97};
char[] green = {164, 229, 112};
char[] yellow = {255, 255, 220};
char[] teal = {179, 238, 204};
char[] blue = {0, 173, 167};
char[][] colors = {red, green, yellow, teal, blue};
int scaleFactor = 4;
boolean wut = false;

void setup () {
  size(100 * scaleFactor, 100 * scaleFactor);
}

void draw () {
  strokeWeight(12);
  scale(scaleFactor);
  background(255);
 
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
