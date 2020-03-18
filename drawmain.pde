void Helix(float add_val){
    int a = (int)add_val;
    if(a < 1) a = 1;
      fill(128);
     textSize(144);
     text("第"+a+"天",400,700);  
}

void drawmain()
{
  background(255);//设置画布背景灰度等级，数值范围0~255，数值越小越黑
 //在画布的下方水平画一个狭长的矩形，并填充黑色，以形成一条粗线
 //这个粗线就是滚动条的水平标尺
 fill(128);
 rect(40,1390,720,20);
 fill(0);
 //如果鼠标左键按下
 if(mousePressed && mouseY > 800)
 {
    //如果鼠标光标相对于画布左上角原点的X坐标值在20到580之间
    if(mouseX>40 && mouseX<760)
    {
      //坐标平移的影响范围在pushMatrix()与 popMatrix()之间的语句
      pushMatrix();
      //将原点从画布的左上角移动到X坐标为mouseX，Y坐标为700处
      translate(mouseX,1400);   
      
      fill(0);
      ellipse(0,0,66,66);//以新坐标原点画直径为33的圆
      //圆内填充为白色
      //白色圆的位置只受鼠标X坐标值的影响，而它的Y坐标值始终为700
      //这个白色的圆就是水平标尺上的滑块，
      //白色的圆只能约束在水平标尺上，随鼠标X值的变化而移动    
      popMatrix();//恢复坐标原点到画布的左上角
      //把区间在20到580的mouseX当前值正比换算为区间0.04到0.2的值
      //这个算式的执行，可以使鼠标X当前值成正比地影响螺旋线半径增加值
      add_val = map(mouseX, 40, 960, 1, 35);  
      Helix(add_val); //调用画螺旋线子程序 
      mouseX_keep=mouseX; 
    }
    //当鼠标当前X值小于等于水平标尺左端点的X值时，白色会固定在其左端点
    //同时螺旋线半径增加值最小
    else if(mouseX<=40)
    {
      add_val = 1;
      fill(0);
      ellipse(40,1400,66,66);
      Helix( 1);
      mouseX_keep = 40; 
    }
    //当鼠标当前X值大于等于水平标尺右端点的X值时，白色会固定在其右端点
    //同时螺旋线半径增加值最大
    else if(mouseX>=760)
    { 
      add_val = 28;
      fill(0);
      ellipse(760,1400,66,66);
      Helix( 28); 
      mouseX_keep = 760; 
    }
    
 }
 //当鼠标左键松开时，螺旋线的形状不变
 else if (mousePressed && mouseY > 600)
 {
   main_state = int(add_val);
   if(main_state < 1) main_state = 1;
 }
 else
 {
     fill(200);
     ellipse(mouseX_keep,1400,66,66);
     Helix( add_val);
 }
}
