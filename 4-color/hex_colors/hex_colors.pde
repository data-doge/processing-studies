int opacity = 255;
color red = #DE3961;
color green = #A4E570;
color yellow = #FFFFDC;
color teal = #B3EECC;
color blue = #00ADA7;
color[] colors = {red, green, yellow, teal, blue};
int scaleFactor = 4;

void setup () {
  size(100 * scaleFactor, 100 * scaleFactor);
}

void draw () {
  strokeWeight(12);
  scale(scaleFactor);
  background(255);
 
  for(int i = 0; i < 5; i++) {
    color rgb = colors[i];
    stroke(rgb);
    int x1 = 20 * i, 
        y1 = 20,
        x2 = 20 * (i + 1),
        y2 = 80;
    line(x1, y1, x2, y2);
  }
}
