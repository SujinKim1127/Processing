class Wall
{
 int xpos = width;
 float ypos = height/1.12;
 int h;
 int speed = 4;
 boolean del = false;
 boolean up = false;
 
 Wall()
 {
   h=int(random(30, 70)); //높이 랜덤
 }
 
 void display()
 {
   noStroke();
   fill(255,255,255);
   image(d,xpos, ypos-h, 50, h+10);
   
   if(dist(x, y, xpos, ypos) < 40)
   {
    println("game over"); 
    game_over=true;
   }
 }
  void move() //사각형 움직이기
 {
   xpos -= speed; //x축으로 움직임
   speed += 4; 
   if(xpos < -5)
   {
     del = true; //객체를 지우기 위해서
   }
 }
 
}
