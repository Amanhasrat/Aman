
int currentPlayer = 1;
boolean gameOver = false;
int winner = 0;
int test = 5;
//int [] board = new int [9]{};
PVector[] boardX;
PVector[] boardY;
Object[] Objects;
int i;
boolean circleTurn = false;
void setup() {
  Objects = new Object[10];
  size(300, 295);
  boardX = new PVector[]{new PVector(0,0)};

}


void draw() {
  background (200,200); 
  strokeWeight(4);
  line(width/3, 0, width/3, height);
  line(2*width/3, 0, 2*width/3, height);
  line(0, height/3, width, height/3);
  line(0, 2*height/3, width, 2*height/3);
  //Objects[0].draw();
  for(int Index = 0; Index < 10; Index ++){
    if (Objects[Index] != null){
      Objects[Index].draw();
    }
  }
  
}

void mousePressed () {
 if(test == 5) {
   circle();
 }
 print(mouseX, mouseY);
 CheckCollission(1,1);
}
void CheckCollission(int YIndex, int XIndex){
  PVector Vector = new PVector(0,0);
  for (int axisAmount = 00; axisAmount < 400; axisAmount += 100){
    if (mouseX > axisAmount){
        Vector.x = (axisAmount) + 50;
        print("j" + Vector.x);
    }
  }
  for (int axisAmount = 0; axisAmount < 400; axisAmount += 100){
    if (mouseY > axisAmount){
        Vector.y = (axisAmount +50);
        
        
    }
  }
  if (circleTurn == false){
    circleTurn = true;
    
  }
  else{
   circleTurn= false;
  }
  print(Vector);
  fill(150,0,150);
  ellipse (Vector.x,Vector.y, 80, 80);
  Objects[i] = new Object(Vector, circleTurn);
  i ++;
  /*
  switch(Vector.x){
    case 0:
      50;
    case 1:
     150;
    case 2:
     250;
  }
  switch(Vector.y){
  case 0:
    50;
  case 1:
    150;
  case 2:
   250;
  }
  */
  
  
}
void circle() {
  fill(255, 255, 255);
  ellipse(10, 10, 10, 10);
}




public class Object {
  boolean circleTurn;
 PVector vector;
 Object(PVector Vector, boolean turn ){
   vector = Vector;
   circleTurn = turn;
 }
 void draw(){
   if (circleTurn = false){
     drawCross(vector.x, vector.y, 40);
   }
   else{
      drawCircle();
   }
 }
 
 void drawCross (float x, float y, float size){
 line(x,y,x + size, y + size);
 line (x, y,x +size, y + size);
 line (150,150,100,100);
 
 }
 void drawCircle(){
  //size(400,400);
  //ellipseMode(CORNERS); // Set ellipseMode is CORNER
  fill(255);
  ellipse(vector.x,vector.y,80,80);
 
 }
}
 
 

 
 
 
