import processing.sound.*; //<>//
int [][] player1 = new int [10][10];
int [][] player2 = new int [10][10];
boolean player1turn=true;
boolean placering=true;
boolean rotated=true;
int placeringtur=0;
int firkantstørrelse=50;
int x;
int y;
boolean player1vundet=false;
boolean player2vundet=false;
boolean delay=false;
boolean delaystart=false;
boolean delaystart1=false;
float timerstart;
boolean timerstarter=true;
boolean flereskud=true;
boolean ikkevisskib=false;
boolean skib1=false;
boolean skib2=false;
boolean skib3=false;
boolean skib4=false;
boolean skib5=false;
boolean skib6=false;
boolean startmenu=true;
int opacity=0;
boolean opacityflip=false;
SoundFile Water;
SoundFile Hit;

void setup () {
  Water = new SoundFile(this, "water.mp3");
  Hit = new SoundFile(this, "hit.mp3");

  size(1030, 550);

  background(0);
  pushMatrix();
  //sørger for at matrixet der indeholder skibene er fyldt med nuller hele vejen igennem
  for (int i=0; i<10; i++) {
    for (int t=0; t<10; t++) {
      player1 [i][t]=0;
      player2 [i][t]=0;
    }
  }
}

void draw () {
  if (startmenu) {
    opacity++;
    textSize(100);
    textAlign(CENTER, CENTER);
    text("sænkeslagskib", width/2, height/2-100);
    textSize(50);

    if (opacity>=120) {
      opacityflip=!opacityflip;
      opacity=0;
    }
    if (!opacityflip) {
      fill(opacity*2);
    } else {
      fill(240-opacity*2);
    }

    text("tryk på skærmen for at starte", width/2, height/2+100);
    fill(255);
  }
  //tjekker om nogen har vundet og sætter en bestemt boolean til sand hvis de har
  else {
    vindertjek();
    if (!player1vundet && !player2vundet) {
      //hvis der er sket noget der kræver delay så går den herind
      if (delay) {
        //starter en timer
        if (timerstarter) {
          timerstart=millis();
          timerstarter=false;
        }
        //viser timeren
        background(0);
        textAlign(CENTER, CENTER);
        textSize(500);
        if (floor(((millis()-timerstart)%1000)/10)<10) {
          text(floor((millis()-timerstart)/1000) + "," + 0 + floor(((millis()-timerstart)%1000)/10), width/2, height/2);
        } else {
          text(floor((millis()-timerstart)/1000) + "," + floor(((millis()-timerstart)%1000)/10), width/2, height/2);
        }
        //stopper timeren
        if (millis()>=(timerstart+3000)) {
          delay=false;
          timerstarter=true;
        }
      } else {
        TegnBræt();
        //sørger for at brættet bliver opdateret før timeren starter så man lige kan nå at se det nye bræt stadie før det bliver den næste persons tur
        if (delaystart) {
          delay(500);
          player1turn=!player1turn;
          delay=true;
          delaystart=false;
        }

        //den delaystart der bruges når der placers skibe
        if (delaystart1) {
          placeringtur=0;
          player1turn=!player1turn;
          delay(1000);
          ikkevisskib=false;
          delaystart1=false;
        }
      }
    }
    //viser vinder skærm
    else {
      background(0);
      textAlign(CENTER, CENTER);
      textSize(50);
      if (player1vundet) {
        text("player 1 har vundet spillet", width/2, height/2);
      } else {
        text("player 2 har vundet spillet", width/2, height/2);
      }
    }
  }
}



//rotere skibet der skal placeres
void keyPressed () {
  if (key=='r') {
    rotated=!rotated;
  }
}
