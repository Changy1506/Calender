void draw_reutrn()
{
  fill(color(170,63,45));
  rect(35,35,230,100);
  fill(255);
  textSize(96);
  text("返回",150,120); 
  
  if(mousePressed && mouseY < 140 && mouseX < 260)
  {
    main_state = 0;
   // music.stop();
  //  if(player.isPlaying())
   //   player.pause();
  }
}
