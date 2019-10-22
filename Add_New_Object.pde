class AddObjectPlane{
  
  float V1X = -100;
  float V1Y = -100;
  float V1Z = 100;
  float V2X = -100;
  float V2Y = -100;
  float V2Z = 100;
  float V3X = -100;
  float V3Y = -100;
  float V3Z = 100;
  float V4X = -100;
  float V4Y = -100;
  float V4Z = 100;
  
  AddObjectPlane(){
    
    beginShape();
    vertex(V1X,V1Y,V1Z);
    vertex(V2X,V2Y,V2Z);
    vertex(V3X,V3Y,V3Z);
    vertex(V4X,V4Y,V4Z);
    endShape(CLOSE);
    
  }
}
