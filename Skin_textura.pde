PShape ball;
PImage txtr;
float theta;

void setup() {
  size (700, 700, P3D);
  txtr = loadImage("Textura-03.jpg");
  ball = loadShape("ball2.obj");
  ball.setTexture(txtr); //attach texture to the 3D shape
}


void draw () {
  background (0);
  //lights();

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (1.5);
  shape (ball);
  popMatrix();

  theta+=.01; //increment angle
}
