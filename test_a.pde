 float add_val ;//定义螺旋线半径增加值
float mouseX_keep = 40;//定义变量，用于保存鼠标当前X值
PFont myf;
//画螺旋线子程序

//初始化
/*
import ddf.minim.*;
AudioPlayer player;
AudioPlayer sound;
Minim minim;
*/



//import cassette.audiofiles.SoundFile;

//SoundFile music;


int main_state;

PImage bg;
PImage img_1;
PImage crek,qibaishi;
PImage mask2;
PImage wine;
PImage virus;
PImage mushroom;
PImage pz1,pz2,pz3,pz4;
PImage mz1,mz2;
PImage chunhua;
PImage li;
PImage zhuda,bird;
PImage nalan;

void setup()
{
 //定义画布大小
 String[] fl = PFont.list();
 printArray(fl);
     textAlign(CENTER);
 size(800,1500); //绘制一个宽度为600像素，高度为750像素的画布
   noStroke();//不绘制图形的轮廓线
 smooth();//开启抗锯齿功能，使线条轮廓光滑
   mouseX_keep=20;//设置鼠标光标位于水平标尺的初始位置
   add_val=0.04; //当螺旋线旋转中心旋转角度不断增加时，
                  //螺旋线上的各点距离旋转中心的半径增加值
                  
   myf = createFont("楷体",128);
   textFont(myf);
   
   bg = loadImage("background.jpg");
   img_1 = loadImage("pic1-0.jpg");
   crek = loadImage("crek.jpg");
   qibaishi = loadImage("qibaishi.jpg");
   mask2 = loadImage("mask.jpg");
   wine = loadImage("wine.jpg");
   virus = loadImage("virus.jpg");
   mushroom = loadImage("mushroom.jpg");
   pz1 = loadImage("puzzle1.jpg");
   pz2 = loadImage("puzzle2.jpg");
   pz3 = loadImage("puzzle3.jpg");
   pz4 = loadImage("puzzle4.jpg");

   mz1 = loadImage("maze1.jpg");
   mz2 = loadImage("maze2.jpg");
   
   li = loadImage("li.jpg");
   
   zhuda = loadImage("zhuda.jpg");
   bird = loadImage("bird.jpg");
   
   chunhua = loadImage("chunhua.jpg");
  
   nalan = loadImage("nalan.jpg");  
  
  // minim = new Minim(this); 
  // player = minim.loadFile("breath.mp3");
  //music = new SoundFile(this, "breath.mp3");
   main_state = 0;
   mouseX_keep = 40;
}




//主程序
void draw(){
  if(main_state == 0)
     drawmain();
  else if(main_state == 1)
  {
  //  draw15();
    drawone();
  }
  else if(main_state == 2)
  {
    
    draw2();
  }
  else if(main_state == 3)
  {
    draw3();
  }
  else if(main_state == 4)
  {
    draw4();
  }
  else if(main_state == 5)
  {
    draw5();
  }
  else if(main_state == 6)
  {
    draw6();
  }
  else if(main_state == 7)
  {
    draw7();
  }
  else if(main_state == 8)
  {
    draw8();
  }
  else if(main_state == 9)
  {
    draw9();
  }
  else if(main_state == 10)
  {
    draw10();
  }
  else if(main_state == 11)
  {
    draw11();
  }
  else if(main_state == 12)
  {
    draw12();
  }
  
  else if(main_state == 13)
  {
    draw13();
  }
  else if(main_state == 14)
  {
    draw14();
  }
  else if(main_state == 15)
  {
    draw15();
  }
  else if(main_state == 16)
  {
    draw16();
  }
  else
    draw17();
}
