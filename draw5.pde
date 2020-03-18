
int S_5 = 0;


void bar51()
{
   //fill(color(170,63,45));
     fill(128);
     rect(150,800,500,100);
     fill(255);
     textSize(72);
     text("真的",400,875);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 800 && mouseY < 900)
        S_5 = 1;
  
}

void bar52()
{
     //fill(color(170,63,45));
     fill(128);
     rect(150,1000,500,100);
     fill(255);
     textSize(72);
     text("假的",400,1075);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 1000 && mouseY < 1100)
        S_5 = 2;
}

void bar53()
{
     //fill(color(170,63,45));
     fill(128);
     rect(150,1300,500,100);
     
     
     
     
     
     fill(255);
     textSize(72);
     
     
     
     text("回到题目",400,1375);
     
     
     if(mousePressed && mouseX > 140 && mouseX < 660 && mouseY > 1300 && mouseY < 1400)
        S_5 = 0;
}

void draw_state_51()
{
  image(bg,0,0);
  textSize(72);
  fill(0);
  text("是真的吗？",400,350); 
  
  textSize(48);
  fill(0);
  text("世卫组织：",400,550); 
  text("无证据显示新冠病毒会在夏季消失 ",400,650);
  bar51();
  bar52();
}

void context5()
{
  textSize(48);
  fill(0);
  text("世界卫生组织卫生紧急项目执行主任",400,450); 
  text("3月6日在日内瓦表示",400,550);
  text("尚无证据显示",400,650);
  text("新冠病毒会在夏季自行消失",400,750);
 
 // image(wine,100,800);
 
}
void yes5()
{
   image(bg,0,0);
  textSize(72);
  fill(0);
  text("答对了",400,350); 
  context5();
  bar53();
}

void no5()
{
  image(bg,0,0);
  textSize(72);
  fill(0);
  text("答错了",400,350); 
  context5();
  bar53();
}

void draw5()
{
  if(S_5 == 0)
     draw_state_51();
  else if(S_5 == 1)
  {
    yes5();
  }
  else
  {
    no5();
  }
  draw_reutrn();
}
