Raket[] ethan= new Raket[5];

void setup() {
  size(800, 800);
  for (int i=0; i<ethan.length; i++) {
    ethan[i] = new Raket();
  }
}


void draw() { //Tegner tingene
  background(227);
  for (int i=0; i<ethan.length; i++) {
    ethan[i].drawRaket();
    ethan[i].moveRaket();
    ethan[i].explode();
  }
}
