class Mouse
{
  int myX, myY;
  Mouse()
  {
    myX=400;
    myY=400;
  }
  void walk()
  {
    if (mouseX<myX){
     myX=myX-2; 
    }
    if(mouseX>myX){
     myX= myX+2; 
    }
    if(mouseY<myY){
      myY= myY-2;
    }
    if(mouseY>myY){
      myY= myY+2;
    }
    myX= myX + (int)(Math.random()*21)-10;
    myY= myY + (int)(Math.random()*21)-10;
    if (myX > 800 || myX < 0) {
  myX = 400;
}

if (myY > 800 || myY < 0) {
  myY = 400;
}
  }
  void show()
  {
      if (myX >790 ||myX <0||myY > 790 || myY < 0){
      fill((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
    }
    int o=0;
    int p=0;
    if(dist (myX,myY, mouseX,mouseY)<50){
   o=50; 
   p=20;
  }
    noStroke();
fill(#B9B9B9);
arc(myX-p,myY,50+o+p,50+o+p,PI,2*PI);
triangle(myX+25,myY,myX+25,myY-5-o,myX+30+o,myY-3);
fill(#FFD8F1);
ellipse(myX,myY-20-o,15+o,15+o);
ellipse(myX-30-o-p,myY-5,20+o+p,3);
ellipse(myX+30+o,myY-2,2+p,2+p);
fill(0,0,0);
ellipse(myX+20,myY-10-p,5+p,5+p);
  }
}
Mouse[] group;
Mouse billy;
void setup()
{
 size(800,800);
 background(#A57323);
 noCursor();
 billy = new Mouse(); 
 group= new Mouse[20];
 for(int i=0; i<group.length;i++)
 {
  group[i]= new Mouse(); 
 }
}
void draw()
{
  background(#A57323);
  billy.walk();
  billy.show();
  for(int i=0; i<group.length; i++){
  group[i].walk();
  group[i].show();
  }
  
  //chesse
stroke(#CEAE0C);
strokeWeight(2);
fill(#FFE874);
triangle(mouseX,mouseY-20,mouseX-20,mouseY,mouseX+20,mouseY);
rect(mouseX-19,mouseY,38,20);
fill(#CEAE0C);
ellipse(mouseX,mouseY,5,5);
ellipse(mouseX+10,mouseY+10,5,5);
ellipse(mouseX+5,mouseY-10,5,5);
ellipse(mouseX-15,mouseY+10,5,5);
ellipse(mouseX-5,mouseY+18,5,5);
  
  
}



