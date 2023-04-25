class Mad { //<>//
  int madradius = 10;
  PVector pos;
  PVector speed;

  Mad() {
    pos=new PVector(600, 600); //<>//
    speed=new PVector(1, 1);
  }

  void drawMad() {//Tegner mad som en cirkel
    circle(pos.x, pos.y, madradius);
    fill(255, 155, 0);
  }
  void moveMad() { //Bevægelse til mad
    if (pos.x<oceanX+(madradius/2)||pos.x>oceanX+oceanWidth-(madradius/2)) {
      speed.x = speed.x * -1;
    } else if (pos.y<oceanY+(madradius/2)||pos.y>oceanY+oceanHeight-(madradius/2)) {
      speed.y = speed.y * -1;
    }
    if (frameCount % 300 == 0) {
      speed.x = random(-100, 100)/100;
      speed.y = random(-100, 100)/100;
      speed.normalize();
    }
    pos.add(speed);
  }
}
