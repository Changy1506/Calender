
int S_2 = 0;


void bar21()
{
   //fill(color(170,63,45));
     fill(128);
     rect(150,800,500,100);
     fill(255);
     textSize(72);
     text("正面（向外）",400,875);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 800 && mouseY < 900)
        S_2 = 1;
  
}

void bar22()
{
     //fill(color(170,63,45));
     fill(128);
     rect(150,1000,500,100);
     fill(255);
     textSize(72);
     text("正面（向外）",400,875);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 1000 && mouseY < 1100)
        S_2 = 2;
}

void bar23()
{
     //fill(color(170,63,45));
     fill(128);
     rect(150,800,500,100);
     fill(255);
     textSize(72);
     text("回到题目",400,875);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 800 && mouseY < 900)
        S_2 = 0;
}

void draw_state_21()
{
  image(bg,0,0);
  textSize(72);
  fill(0);
  text("常识小测验",400,350); 
  
  textSize(48);
  fill(0);
  text("医用口罩颜色深的一面",400,550); 
  text("是正面还是反面？",400,650);
  bar21();
  bar22();
}

void yes2()
{
   image(bg,0,0);
  textSize(72);
  fill(0);
  text("答对了",400,350); 
}

void no2()
{
  image(bg,0,0);
  textSize(72);
  fill(0);
  text("答错了",400,350); 
}

void draw2()
{
  if(S_2 == 0)
     draw_state_21();
  else if(S_2 == 1)
  {
    yes2();
  }
  else
  {
    no2();
  }
  draw_reutrn();
}
