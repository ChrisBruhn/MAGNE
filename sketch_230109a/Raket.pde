class Raket {
  int gram=int(random(200, 400));
  int expradius=10;
  int r=int(random(255));
  int g=int(random(255));
  int b=int(random(255));
  int alpha=255;
  float xPos=0;
  float yPos=800;
  float angle = random(0, 4);

  void drawRaket() {
    circle(xPos, yPos, expradius); //Tegner raketten
  }

  void moveRaket() { //Bevægelsen af raketten
    xPos=xPos+angle;//Angle gør at raketten flyver i en tilfældig retning
    yPos -=3;
  }
  void explode() { //Eksploder raketten når den rammer en bestemt højde
    if (yPos>gram) {
      fill(0);
    } else {
      fill(r,g,b,alpha);//Giver eksplosionen en tilfældig farve
      expradius++;
    }
    if (expradius>100) { //Fjerner raketten når den bliver en hvis størrelse
      background(227);
    }
  }
}
