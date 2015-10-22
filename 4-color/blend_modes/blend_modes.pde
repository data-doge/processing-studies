int scaleFactor = 1;
boolean setBlackBackground = true;

void setup () {
  size(100 * scaleFactor, 100 * scaleFactor);
}

void draw () {
  scale(scaleFactor);
  if (setBlackBackground) {
    background(0);
  } else {
    background(255);
  }
  noStroke();

  // yellow
  fill(242, 204, 47, 160);
  ellipse(47, 36, 64, 64);
  // green
  fill(174, 221, 60, 160);
  ellipse(90, 47, 64, 64);
  // blue
  fill(116, 193, 206, 160);
  ellipse(57, 79, 64, 64);
}

void keyPressed () {
  switch (key) {
    case 'b':
      setBlackBackground = !setBlackBackground;
      println("background toggled");
    case '1':
      blendMode(ADD);
      println("ADD");
      break;
    case '2':
      blendMode(SUBTRACT);
      println("SUBTRACT");
      break;
    case '3':
      blendMode(DARKEST);
      println("DARKEST");
      break;
    case '4':
      blendMode(LIGHTEST);
      println("LIGHTEST");
      break;
    case '5':
      blendMode(EXCLUSION);
      println("EXCLUSION");
      break;
    case '6':
      blendMode(MULTIPLY);
      println("MULTIPLY");
      break;
    case '7':
      blendMode(SCREEN);
      println("SCREEN");
      break;
    case '8':
      blendMode(REPLACE);
      println("REPLACE");
      break;
    case '0':
      blendMode(BLEND);
      println("BLEND");
      break;  
  }
}
