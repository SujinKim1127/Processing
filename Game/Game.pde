import processing.sound.*;
SoundFile file;
PImage b;
PImage c;
PImage d;
PImage k;

int x=300;  //캐릭터 X좌표 설정
int y=0;
float speed = 1;

ArrayList<Wall> walls = new ArrayList<Wall>();

int now_time = 0;
int interval = 3000;

boolean game_over = false;

int score = 0;

void setup()
{
  file = new SoundFile(this,"mario1.wav");
  file.play();
  b = loadImage("sample.jpg");
  c = loadImage("Mario.png");
  d = loadImage("Bullet.png");
  k = loadImage("Gameover.png");
  size(800, 400);
  now_time = millis();  
}
 
void draw()
{ 
  image(b,0,0,800,400);
  fill(0);
  textSize(24);
  text(score, 100, 100);
  
  if(millis() - now_time > interval )
  {
   walls.add(new Wall());
   now_time = millis();
   interval = int(random(2000, 6000)); //벽 생성시간간격
   print("w");
  }
  
  //캐릭터
  image(c,x,y-50,40,60); 
  if(game_over == true)
  {
    image(k,0,-100,800,400);
  }
   
  if(y+speed < height/1.12)
  {
    y += speed; //떨어지는 속도
  speed += 0.2; //가속도
  }
  /*stroke(128, 64, 0);
  strokeWeight(3);
  line(0, height/1.12, width, height/1.12); //지평선*/
  
  for(int i = 0; i < walls.size(); i++) //벽시각화
  {
    Wall myWall = walls.get(i);
    myWall.display();
    if(game_over == false)
    {
      myWall.move();
    }
    if(myWall.del == true)
    {
     walls.remove(i); 
    }
    if(myWall.xpos < x && myWall.up == false)
    {
      score = score + 1;
      myWall.up = true;
    }
  }
}

void keyPressed()
{
  file = new SoundFile(this,"Jump.wav");
  file.play();
  speed = -7;
  if(game_over == true)
  {
    game_over = false;
    score=0;
  }
}
