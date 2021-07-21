class Element{
  float x,y,w,h;
 Peice peice;
  
  Element( float xx, float yy, float w1, float h1){
    x=xx;
    y=yy;
    w=w1;
    h=h1;
   peice = null;
    
  }
  
  
  void draw(){
    
    line(0,y,width,y);
    line(x,0,x,height);
    
    
  }
  
  void addPeice(){
     
    
 }


  boolean isMouseClick(){
    if(mouseX> x && mouseX < x+ w && mouseY > y && mouseY < y+h && peice == null){
      b.peices.add (new Peice(x+ w/2, y+ h/2,playerOneTurn));
      peice = b.peices.get(b.peices.size() -1);
      return true;
    }
    return false;
  }
  
  
  
  boolean hasPeice(){
   if( peice != null){   
     return true;
   }
   return false;
   
 }
  
  
  
  
  
  
}
