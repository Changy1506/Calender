
int S_3 = 0;


void bar31()
{
   //fill(color(170,63,45));
     fill(128);
     rect(150,800,500,100);
     fill(255);
     textSize(72);
     text("真的",400,875);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 800 && mouseY < 900)
        S_3 = 2;
  
}

void bar32()
{
     //fill(color(170,63,45));
     fill(128);
     rect(150,1000,500,100);
     fill(255);
     textSize(72);
     text("假的",400,1075);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 1000 && mouseY < 1100)
        S_3 = 1;
}

void bar33()
{
     //fill(color(170,63,45));
     fill(128);
     rect(150,1300,500,100);
     
     
     
     
     
     fill(255);
     textSize(72);
     
     
     
     text("回到题目",400,1375);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 1300 && mouseY < 1400)
        S_3 = 0;
}

void draw_state_31()
{
  image(bg,0,0);
  textSize(72);
  fill(0);
  text("是真的吗？",400,350); 
  
  textSize(48);
  fill(0);
  text("因为疫情防控",400,550); 
  text("饮用水水质情况受到影响",400,650);
  bar31();
  bar32();
}

void context3()
{
  textSize(48);
  fill(0);
  text("累计对饮用水源地",400,450); 
  text("开展监测17949次，",400,550);
  text("未发现受疫情防控",400,650);
  text(" 影响饮用水源地水质情况。",400,750);
 
  
 
}
void yes3()
{
   image(bg,0,0);
  textSize(72);
  fill(0);
  text("答对了",400,350); 
  context3();
  bar33();
}

void no3()
{
  image(bg,0,0);
  textSize(72);
  fill(0);
  text("答错了",400,350); 
  context3();
  bar33();
}

void draw3()
{
  if(S_3 == 0)
     draw_state_31();
  else if(S_3 == 1)
  {
    yes3();
  }
  else
  {
    no3();
  }
  draw_reutrn();
}
