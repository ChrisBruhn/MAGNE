// plads til 5 dyr //<>// //<>//
Dyr[] dyr = new Dyr[5];

Mad[] mad = new Mad[1];


Knapper[] knap= new Knapper[1];

float farve = color(255, 210, 100);
float oceanX=400;
float oceanY=50;
float oceanWidth=1450;
float oceanHeight=980;
color c;

void setup() {
  size(1900, 1080);

  dyr[0]=new Dyr();
  mad[0]=new Mad();
  knap[0]=new Knapper();
}

void draw() {
  background(227);
  fill(0, 0, 180);
  rect(oceanX, oceanY, oceanWidth, oceanHeight, 28);
  fill(0, 225, 0);
  for (int i = 0; i < mad.length; i++) {
    mad[i].drawMad();
    mad[i].moveMad();
  }
  fill(255, 200, 0);

  // loop igennem alle dyr og vis dem på skærmen
  for (int i = 0; i < dyr.length; i++) {
    // hvis ikke alle dyr er i live så vil pladsen være null. For at undgå dette tester vi om den er null
    if (dyr[i] != null) {
      dyr[i].drawDyr();
      dyr[i].moveDyr();
    }
  }
  knap[0].drawKnapper();
}
void mouseClicked() {
  int i=0; // tæller til at tilføje nyt dyr med.
  c = get(mouseX, mouseY);
  // hvis c har den samme farve som vores knap har vi trykket det rigtige sted og den laver nyt dyr
  if (c==-11676) {
    
    // find den sidste plads i array
    while (dyr[i]!= null && dyr.length-1 > i) {
      i++;
    }
    // når vi ved hvad i skal være kan vi sætte en ny ind i arrayet
    if (dyr.length > i) {
      dyr[i]=new Dyr();
    }
  }
}
