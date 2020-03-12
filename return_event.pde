void draw_reutrn()
{
  fill(128);
  rect(35,35,230,100);
  fill(255);
  textSize(96);
  text("返回",150,120); 
  
  if(mousePressed && mouseY < 200 && mouseX < 200)
  {
    main_state = 0;
  //  if(player.isPlaying())
   //   player.pause();
  }
}
