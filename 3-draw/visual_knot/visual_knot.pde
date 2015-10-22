int scaleFactor = 4;

int aX = 0;
int aY = 100;

int bX = 40;
int bY = 40;

int cX = 75;
int cY = 40;

int dX = 62;
int dY = 72;

int eX = 50;
int eY = 100;

void setup () {
  size(100 * scaleFactor, 100 * scaleFactor);
  background(255);
}

void draw () {
  scale(scaleFactor);
  fill(0,0);
  
  // a to b
  bezier(aX, aY, aX, aY, bX - 20, bY + 10, bX - 3, bY + 2);
  // b to c
  bezier(bX + 2, bY, bX + 7, bY - 4, cX - 7, cY - 4, cX, cY);
  // c to d
  bezier(cX, cY, cX + 20, cY + 10, dX + 15, dY + 5, dX + 2, dY + 1);
  // d to b
  bezier(dX - 3, dY - 1, dX, dY, bX - 5, bY + 20, bX, bY);
  // b to c
  bezier(bX, bY, bX + 10, bY - 30, cX + 10, cY - 30, cX, cY - 2);
  // c to d
  bezier(cX - 1, cY + 2, cX, cY, dX, dY, dX, dY);
  // d to e
  bezier(dX, dY, dX, dY, eX, eY, eX, eY);
}
