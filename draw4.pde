
int S_4 = 0;


void bar41()
{
   //fill(color(170,63,45));
     fill(128);
     rect(150,800,500,100);
     fill(255);
     textSize(72);
     text("真的",400,875);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 800 && mouseY < 900)
        S_4 = 2;
  
}

void bar42()
{
     //fill(color(170,63,45));
     fill(128);
     rect(150,1000,500,100);
     fill(255);
     textSize(72);
     text("假的",400,1075);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 1000 && mouseY < 1100)
        S_4 = 1;
}

void bar43()
{
     //fill(color(170,63,45));
     fill(128);
     rect(150,1300,500,100);
     
     
     
     
     
     fill(255);
     textSize(72);
     
     
     
     text("回到题目",400,1375);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 1300 && mouseY < 1400)
        S_4 = 0;
}

void draw_state_41()
{
  image(bg,0,0);
  textSize(72);
  fill(0);
  text("是真的吗？",400,550); 
  
  textSize(48);
  fill(0);
  text("饮高度酒能对抗冠状病毒",400,350); 
  //text("饮用水水质情况受到影响",400,650);
  bar41();
  bar42();
}

void context4()
{
  textSize(48);
  fill(0);
  text("75%酒精能杀灭病毒，",400,450); 
  text("但不是“喝”。",400,550);
  text("喝到胃里的酒走的是消化系统，",400,650);
  text(" 而新冠肺炎是呼吸系统疾病。",400,750);
 
  image(wine,100,800);
 
}
void yes4()
{
   image(bg,0,0);
  textSize(72);
  fill(0);
  text("答对了",400,350); 
  context4();
  bar43();
}

void no4()
{
  image(bg,0,0);
  textSize(72);
  fill(0);
  text("答错了",400,350); 
  context4();
  bar43();
}

void draw4()
{
  if(S_4 == 0)
     draw_state_41();
  else if(S_4 == 1)
  {
    yes4();
  }
  else
  {
    no4();
  }
  draw_reutrn();
}
