 float add_val ;//定义螺旋线半径增加值
float mouseX_keep;//定义变量，用于保存鼠标当前X值
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

  // minim = new Minim(this); 
  // player = minim.loadFile("breath.mp3");
  //music = new SoundFile(this, "breath.mp3");
   main_state = 0;
}




//主程序
void draw(){
  if(main_state == 0)
     drawmain();
  else if(main_state == 1)
  {
    //init_one();
    drawone();
   //  S_2 = 0;
  //  draw5();
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
  else
    draw2();
}
