boolean playerOneTurn = true;
Board b;
boolean moveMode = false; 

void setup(){
 size(800,600); 
b = new Board();
}
void draw(){
  background(52, 235, 229);
  b.draw();
  
}
void mousePressed(){
  if( moveMode){
    Element e = b.getElementMouse(); // local variables
      if(e.peice != null){
        e.peice.isHolding = true;
        e.peice = null;
      }
  }
  else{
    if(mouseButton == LEFT){
      b.isClicked();
    }
    if(mouseButton == RIGHT){
      for( Peice p : b.peices){
        p.isClicked();
      }
     
  }
  }
}
void mouseReleased(){
  if(mouseButton == RIGHT ){
     for( Peice p : b.peices){
     p.isHolding = false;
   
   }
   }

}
void keyPressed(){
  if(key == 'm'){
    moveMode = !moveMode;
    
  }
  
}
