PShape O;

void setup(){
  size(600,600,P3D);
  O = loadShape("3D kasse.obj");
}

void draw(){
  camera(mouseX, height/2, (height/2) / tan(PI/6), width/2, height/2,0,0,1,0);
  translate(width/2,height/2);
  shape(O,0,0);
}
