
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
     text("反面（向内）",400,1075);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 1000 && mouseY < 1100)
        S_2 = 2;
}

void bar23()
{
     //fill(color(170,63,45));
     fill(128);
     rect(150,1300,500,100);
     
     
     
     
     
     fill(255);
     textSize(72);
     
     
     
     text("回到题目",400,1375);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 1300 && mouseY < 1400)
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

void context2()
{
  textSize(48);
  fill(0);
  text("医用口罩正面颜色较深",400,450); 
  text("除此之外，正面金属条凸出朝上",400,550);
  text("褶皱向下",400,650);
  
  image(mask2,40,700);
}
void yes2()
{
   image(bg,0,0);
  textSize(72);
  fill(0);
  text("答对了",400,350); 
  context2();
  bar23();
}

void no2()
{
  image(bg,0,0);
  textSize(72);
  fill(0);
  text("答错了",400,350); 
  context2();
  bar23();
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
