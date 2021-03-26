void setup() {
size(480, 270);
}
void draw(){
background(255);
ellipseMode(CENTER);
rectMode(CENTER); 
}

//body
noStroke();
fill(250, 222, 171);
rect(240, 135, 60, 90, 10);

//eye
noStroke();
fill(0);
circle(230, 110, 8);
noStroke();
fill(0);
circle(250, 110,8);

//cloth
noStroke();
fill(128, 64, 64);
rect(240, 160, 60, 40, 0, 0, 10, 10);

//mouth
stroke(0);
line(235, 120, 245, 120);

//leg
stroke(128, 64, 64);
strokeWeight(5);
line(230,180, 230,195);
stroke(128, 64, 64);
strokeWeight(5);
line(250,180, 250,195);
