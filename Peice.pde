class Peice{
  float x,y;
  boolean isCircle;
  boolean isHolding;
  Peice(float xx, float yy, boolean circle){
    x=xx;
    y=yy;
    isCircle= circle;
    isHolding = false;
  }
  void draw(){
    if(isCircle){
      if(isHolding){
    circle(mouseX,mouseY, 50);
    x= mouseX;
    y= mouseY;
      }
      else{
     
        circle(x,y,50);
        
      }
    }
    else{
      if (isHolding){
      line(mouseX+20,mouseY-20,mouseX-20,mouseY+20);
      line(mouseX+20,mouseY+20,mouseX-20,mouseY-20);
      x= mouseX;
      y= mouseY;
      }
      else{
    
      line(x+20,y-20,x-20,y+20);
      line(x+20,y+20,x-20,y-20); 
     
      }
    }    
  }
  
void isClicked(){
  if(dist(x,y,mouseX, mouseY)< 25){
    isHolding = true;
  } 
}
    
 
  
  
  
}
