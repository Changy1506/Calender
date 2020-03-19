


int S_14 = 0;
int stop14 = 0;

void draw_b14()
{
  fill(color(170,63,45));
  rect(500,35,250,100);
  fill(255);
  textSize(96);
  text("翻页",625,120); 
  
  if(mousePressed && mouseX > 470 && mouseX < 775  && mouseY > 30 && mouseY < 140  && stop14 == 0)
  {
        stop14 = 10;
       S_14 = 1 - S_14;
  }
}


void draw_142()
{
  image(bird,0,0);
  draw_b14();
}

void draw_state_141()
{
   image(bg,0,0);
  draw_music_one();
  textSize(48);
  fill(0);
  text("朱耷",400,250); 
  text("号八大山人",400,350);
  text("明末清初画家",400,450); 
  text("花鸟以水墨写意为主",400,550); 
  text("形象夸张奇特",400,650);
  text("点击“翻页”",400,750); 
  text("欣赏其花鸟作品",400,850);
  
  image(zhuda,272,900);
  draw_b14();
}
void draw14()
{
  if(stop14 > 0)
   stop14 --;
    if(S_14 == 0)
    draw_state_141();
    else
    draw_142();
  draw_reutrn();

}
