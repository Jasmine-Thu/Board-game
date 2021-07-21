class Board{
  ArrayList<Peice> peices = new ArrayList<Peice>();
  ArrayList<Element> elements = new ArrayList<Element>();

  Board(){
    for(int x = 0; x < width; x+=100){
      for(int y = 0; y < height; y+=100){
        elements.add(new Element (x,y,100,100));
      }
    }
  }
  
  void draw(){
    for( Element e: elements){
      e.draw();      
    }
  
    for( Peice p : peices){
      p.draw();
    }
  }
    boolean isClicked(){
     for( Element e : elements){
       if(e.isMouseClick()){
        if( e.hasPeice()){  
          e.peice.isHolding = true;
           return true;
        }
        else{
          
          e.peice.isClicked();
        }
          playerOneTurn = !playerOneTurn;
           return true;
      }
       }
        return false;
    }
  
  Element getElementMouse(){
    for(Element e: elements){   
      if(e.isMouseClick()){  
        return e;
      }        
    }
     return null;
  }
 

  
  
  
}
