class Dyr {
  int dyrradius = 15;
  PVector pos;
  PVector speed;

  Dyr() {
    // laver dyr på tilfældig position
    pos=new PVector(random(oceanX+10,random(oceanWidth)), random(oceanX+10,random(oceanHeight)));
    //lav noget random her også så de ikke bevæger sig lige hurtig
    speed=new PVector(1, 1);
  }


  void drawDyr() {//Tegner dyr som en trekant
    triangle(pos.x, pos.y, pos.x+dyrradius, pos.y-30, pos.x-dyrradius, pos.y-30);
  }

  void moveDyr() { //Bevægelse til dyr
    if (pos.x<oceanX+dyrradius||pos.x>oceanX+oceanWidth-dyrradius) {
      speed.x = speed.x * -1;
    } else if (pos.y<oceanY+30||pos.y>oceanY+oceanHeight) {
      speed.y = speed.y * -1;
    }
    if (frameCount % 300 == 0) {
      speed.x = random(-100, 100)/100;
      speed.y = random(-100, 100)/100;
      speed.normalize();
    }

    {
      pos.add(speed);
    }
  }
}
