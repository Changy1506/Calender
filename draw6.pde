
int S_6 = 0;


void bar61()
{
   //fill(color(170,63,45));
     fill(128);
     rect(150,800,500,100);
     fill(255);
     textSize(72);
     text("真的",400,875);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 800 && mouseY < 900)
        S_6 = 1;
  
}

void bar62()
{
     //fill(color(170,63,45));
     fill(128);
     rect(150,1000,500,100);
     fill(255);
     textSize(72);
     text("假的",400,1075);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 1000 && mouseY < 1100)
        S_6 = 2;
}

void bar63()
{
     //fill(color(170,63,45));
     fill(128);
     rect(150,1300,500,100);
     
     
     
     
     
     fill(255);
     textSize(72);
     
     
     
     text("回到题目",400,1375);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 1300 && mouseY < 1400)
        S_6 = 0;
}

void draw_state_61()
{
  image(bg,0,0);
  textSize(72);
  fill(0);
  text("是真的吗？",400,650); 
  
  textSize(48);
  fill(0);
  text("疫情首先出现在中国",400,350); 
  text("但不一定发源在中国",400,450);
  bar61();
  bar62();
}

void context6()
{
  textSize(48);
  fill(0);
  text("从科研角度看，",400,450); 
  text("“首先发现”和“发源”",400,550);
  text("不能划上等号，",400,650);
  text("但我们也不能就此判断",400,750);
  text("疫情是来自国外。",400,850);
 
  image(virus,100,900);
 
}
void yes6()
{
   image(bg,0,0);
  textSize(72);
  fill(0);
  text("答对了",400,350); 
  context6();
  bar63();
}

void no6()
{
  image(bg,0,0);
  textSize(72);
  fill(0);
  text("答错了",400,350); 
  context6();
  bar63();
}

void draw6()
{
  if(S_6 == 0)
     draw_state_61();
  else if(S_6 == 1)
  {
    yes6();
  }
  else
  {
    no6();
  }
  draw_reutrn();
}
