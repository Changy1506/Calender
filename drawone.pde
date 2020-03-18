

int one_music = 1;
int stop = 0;
int state_one = 0;
int S_1 = 0;

void draw_music_one()
{
  fill(128);
  rect(500,35,250,100);
  fill(255);
  textSize(96);
  text("翻页",625,120); 
  
  if(mousePressed && mouseX > 470 && mouseX < 775  && mouseY > 30 && mouseY < 140  && stop == 0)
  {
        stop = 10;
       S_1 = 1 - S_1;
       //music = new SoundFile(this, "Crickets.mp3");
      // music.loop();
  }
}
void draw_crek()
{
  image(img_1,0,0);
  
  draw_music_one();
  
  if(0 <= state_one && state_one < 20)
  image(crek,166 - state_one,952 + state_one);
  else
  image(crek,166 - 40 + state_one,952 + 40 - state_one);
  if(state_one > 0)
  state_one -=1;
  if(mousePressed && mouseX > 166 && mouseX < 466 && mouseY > 952 && mouseY < 1252 && state_one == 0)
  {
      state_one = 40;
  }
}


void draw_state_one()
{
  background(255);
  draw_music_one();
  textSize(48);
  fill(0);
  text("齐白石",400,250); 
  text("近现代中国绘画大师",400,350);
  text("擅画花鸟、虫鱼、山水、人物",400,450); 
  text("笔墨雄浑滋润",400,550); 
  text("色彩浓艳明快",400,650);
  text("点击“翻页”",400,750); 
  text("欣赏作品《稻穗秋蝗》",400,850);
  
  image(qibaishi,272,900);
//  text("下一页",625,120); 
}
void drawone()
{
  if(stop > 0)
  stop -= 1;
  
    if(S_1 == 0)
    draw_state_one();
    else
    draw_crek();
  draw_reutrn();

}
