float theta = 0;

void setup() {
  size(480, 480);
}


void draw() {
  background(152, 182, 231);
  stroke(0);


  translate(width/2, height/2);
  fill(255, 200, 50);
  ellipse(0, 0, 64, 64);

  pushMatrix();
  
  rotate(theta*1.5);
  translate(70, 0);
  fill(0, 128, 255);
  ellipse(0, 0, 20,20);
  
  rotate(theta);
  translate(100, 0);
  fill(255, 128, 128);
  ellipse(0, 0, 30,30);
  
  pushMatrix();
  rotate(theta);
  translate(50, 0);
  fill(209,236,147);
  ellipse(0, 0, 20, 20);
  
  rotate(theta*2);
  translate(70, 0);
  fill(255,0,128);
  ellipse(0, 0, 15, 15);
  popMatrix();

  pushMatrix();
  rotate(theta);
  translate(24, 0);
  fill(192, 192, 192);
  ellipse(0, 0, 6, 6);
  popMatrix();

  popMatrix();

  theta += 0.01;
}
