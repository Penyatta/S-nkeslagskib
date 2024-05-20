void TegnBræt() {
  background(0);
  if (player1turn) {
    for (int i=0; i<10; i++) {
      for (int t=0; t<10; t++) {
        //tegner hvide firkanter på hele det venstre bræt
        rect(t*50, i*50+50, 50, 50);
        //gør de ramte tomme felter blå på venstre bræt
        if (player1[i][t]==1) {
          fill(0, 0, 255);
          rect(t*50, i*50+50, 50, 50);
          translate(t*50+25, i*50+75);
          stroke(0,0,150);
          strokeWeight(8);
          fill(0, 0, 255);
          circle(0,0,30);
          popMatrix();
          pushMatrix();
          stroke(0);
          strokeWeight(1);
        }
        //gør firkanter med ramte skibe røde med kryds på højre bræt
        fill(255);
         rect((10+t)*50+30, i*50+50, 50, 50);
        if (player2[i][t]!=1&&(player2[i][t]%2)==1) {
          fill(255, 0, 0);
           rect((10+t)*50+30, i*50+50, 50, 50);
          translate((t+10)*50+55, i*50+75);
          rotate(0.75);
          noStroke();
          fill(150, 0, 0);
          rectMode(CENTER);
          rect(0, 0, 8, 40);
          rect(0, 0, 40, 8);
          popMatrix();
          pushMatrix();
          rectMode(CORNER);
          stroke(0);
        }
        //tegner hvide firkanter på hele det højre bræt
       
        //gør de ramte tomme felter blå med kryds på højre bræt
        if (player2[i][t]==1) {
          fill(0, 0, 255);
          rect((10+t)*50+30, i*50+50, 50, 50);
          translate((10+t)*50+55, i*50+75);
          stroke(0,0,150);
          strokeWeight(8);
          fill(0, 0, 255);
          circle(0,0,30);
          popMatrix();
          pushMatrix();
          stroke(0);
          strokeWeight(1);
          
        }
        fill(255);
      }
    }

    for (int i=0; i<10; i++) {
      for (int t=0; t<10; t++) {
        //5 lang skib tegning
        if (!skib1&&(player1[i][t]==2 || player1[i][t]==3)) {
          fill(150);
          if (i!=9) {
            if (player1[i+1][t]==2 || player1[i+1][t]==3) {
              ellipse(t*50+25, i*50+175, 40, 230);
            }
          }
          if (t!=9) {
            if (player1[i][t+1]==2 || player1[i][t+1]==3) {
              ellipse(t*50+125, i*50+75, 230, 40);
            }
          }
          skib1=true;
        }
        //4 lang skib tegning
        if (!skib2&&(player1[i][t]==4 || player1[i][t]==5)) {
          fill(150);
          if (i!=9) {
            if (player1[i+1][t]==4 || player1[i+1][t]==5) {
              ellipse(t*50+25, i*50+150, 40, 180);
            }
          }
          if (t!=9) {
            if (player1[i][t+1]==4 || player1[i][t+1]==5) {
              ellipse(t*50+100, i*50+75, 180, 40);
            }
          }
          skib2=true;
        }
        //3 lang skib tegning
        if (!skib3&&(player1[i][t]==6 || player1[i][t]==7)) {
          fill(150);
          if (i!=9) {
            if (player1[i+1][t]==6 || player1[i+1][t]==7) {
              ellipse(t*50+25, i*50+125, 40, 130);
            }
          }
          if (t!=9) {
            if (player1[i][t+1]==6 || player1[i][t+1]==7) {
              ellipse(t*50+75, i*50+75, 130, 40);
            }
          }
          skib3=true;
        }
        //3 lang skib tegning
        if (!skib4&&(player1[i][t]==8 || player1[i][t]==9)) {
          fill(150);
          if (i!=9) {
            if (player1[i+1][t]==8 || player1[i+1][t]==9) {
              ellipse(t*50+25, i*50+125, 40, 130);
            }
          }
          if (t!=9) {
            if (player1[i][t+1]==8 || player1[i][t+1]==9) {
              ellipse(t*50+75, i*50+75, 130, 40);
            }
          }
          skib4=true;
        }
        //2 lang skib tegning
        if (!skib5&&(player1[i][t]==10 || player1[i][t]==11)) {
          fill(150);
          if (i!=9) {
            if (player1[i+1][t]==10 || player1[i+1][t]==11) {
              ellipse(t*50+25, i*50+100, 40, 80);
            }
          }
          if (t!=9) {
            if (player1[i][t+1]==10 || player1[i][t+1]==11) {
              ellipse(t*50+50, i*50+75, 80, 40);
            }
          }
          skib5=true;
        }
        //2 lang skib tegning
        if (!skib6&&(player1[i][t]==12 || player1[i][t]==13)) {
          fill(150);
          if (i!=9) {
            if (player1[i+1][t]==12 || player1[i+1][t]==13) {
              ellipse(t*50+25, i*50+100, 40, 80);
            }
          }
          if (t!=9) {
            if (player1[i][t+1]==12 || player1[i][t+1]==13) {
              ellipse(t*50+50, i*50+75, 80, 40);
            }
          }
          skib6=true;
        }
        if (player1[i][t]>1 && (player1[i][t]%2)==1) {

          fill(255, 0, 0, 150);
          noStroke();
          rect(t*50+1, (i+1)*50+1, 49, 49);
          stroke(1);
        }
      }
    }
    fill(255);
    skib1=false;
    skib2=false;
    skib3=false;
    skib4=false;
    skib5=false;
    skib6=false;
  }
  //player 2s turn tegn
  else {
    for (int i=0; i<10; i++) {
      for (int t=0; t<10; t++) {
//tegner hvide firkanter på hele det venstre bræt
        rect(t*50, i*50+50, 50, 50);
        //gør de ramte tomme felter blå med kryds på venstre bræt
        if (player2[i][t]==1) {
          fill(0, 0, 255);
          rect(t*50, i*50+50, 50, 50);
          translate(t*50+25, i*50+75);
          stroke(0,0,150);
          strokeWeight(8);
          fill(0, 0, 255);
          circle(0,0,30);
          popMatrix();
          pushMatrix();
          stroke(0);
          strokeWeight(1);
        }

        fill(255);
        rect((10+t)*50+30, i*50+50, 50, 50);
        //gør firknater med ramte skibe røde
        if (player1[i][t]!=1&&(player1[i][t]%2)==1) {
          fill(255, 0, 0);
          rect((10+t)*50+30, i*50+50, 50, 50);
          translate((10+t)*50+55, i*50+75);
          rotate(0.75);
          noStroke();
          fill(150, 0, 0);
          rectMode(CENTER);
          rect(0, 0, 8, 40);
          rect(0, 0, 40, 8);
          popMatrix();
          pushMatrix();
          rectMode(CORNER);
          stroke(0);
        }
        //tegner hvide firkanter på hele det højre bræt
        
        //gør de ramte tomme felter blå med kryds på højre bræt
        if (player1[i][t]==1) {
          fill(0, 0, 255);
          rect((10+t)*50+30, i*50+50, 50, 50);
          translate((10+t)*50+55, i*50+75);
          stroke(0,0,150);
          strokeWeight(8);
          fill(0, 0, 255);
          circle(0,0,30);
          popMatrix();
          pushMatrix();
          stroke(0);
          strokeWeight(1);
        }
        fill(255);
      }
    }
    for (int i=0; i<10; i++) {
      for (int t=0; t<10; t++) {
        //5 lang skib tegning
        if (!skib1&&(player2[i][t]==2 || player2[i][t]==3)) {
          fill(150);
          if (i!=9) {
            if (player2[i+1][t]==2 || player2[i+1][t]==3) {
              ellipse(t*50+25, i*50+175, 40, 230);
            }
          }
          if (t!=9) {
            if (player2[i][t+1]==2 || player2[i][t+1]==3) {
              ellipse(t*50+125, i*50+75, 230, 40);
            }
          }
          skib1=true;
        }
        //4 lang skib tegning
        if (!skib2&&(player2[i][t]==4 || player2[i][t]==5)) {
          fill(150);
          if (i!=9) {
            if (player2[i+1][t]==4 || player2[i+1][t]==5) {
              ellipse(t*50+25, i*50+150, 40, 180);
            }
          }
          if (t!=9) {
            if (player2[i][t+1]==4 || player2[i][t+1]==5) {
              ellipse(t*50+100, i*50+75, 180, 40);
            }
          }
          skib2=true;
        }
        //3 lang skib tegning
        if (!skib3&&(player2[i][t]==6 || player2[i][t]==7)) {
          fill(150);
          if (i!=9) {
            if (player2[i+1][t]==6 || player2[i+1][t]==7) {
              ellipse(t*50+25, i*50+125, 40, 130);
            }
          }
          if (t!=9) {
            if (player2[i][t+1]==6 || player2[i][t+1]==7) {
              ellipse(t*50+75, i*50+75, 130, 40);
            }
          }
          skib3=true;
        }
        //3 lang skib tegning
        if (!skib4&&(player2[i][t]==8 || player2[i][t]==9)) {
          fill(150);
          if (i!=9) {
            if (player2[i+1][t]==8 || player2[i+1][t]==9) {
              ellipse(t*50+25, i*50+125, 40, 130);
            }
          }
          if (t!=9) {
            if (player2[i][t+1]==8 || player2[i][t+1]==9) {
              ellipse(t*50+75, i*50+75, 130, 40);
            }
          }
          skib4=true;
        }
        //2 lang skib tegning
        if (!skib5&&(player2[i][t]==10 || player2[i][t]==11)) {
          fill(150);
          if (i!=9) {
            if (player2[i+1][t]==10 || player2[i+1][t]==11) {
              ellipse(t*50+25, i*50+100, 40, 80);
            }
          }
          if (t!=9) {
            if (player2[i][t+1]==10 || player2[i][t+1]==11) {
              ellipse(t*50+50, i*50+75, 80, 40);
            }
          }
          skib5=true;
        }
        //2 lang skib tegning
        if (!skib6&&(player2[i][t]==12 || player2[i][t]==13)) {
          fill(150);
          if (i!=9) {
            if (player2[i+1][t]==12 || player2[i+1][t]==13) {
              ellipse(t*50+25, i*50+100, 40, 80);
            }
          }
          if (t!=9) {
            if (player2[i][t+1]==12 || player2[i][t+1]==13) {
              ellipse(t*50+50, i*50+75, 80, 40);
            }
          }
          skib6=true;
        }
        if (player2[i][t]>1 && (player2[i][t]%2)==1) {
          fill(255, 0, 0, 150);
          noStroke();
          rect(t*50+1, (i+1)*50+1, 49, 49);
          stroke(1);
        }
      }
    }
    fill(255);
    skib1=false;
    skib2=false;
    skib3=false;
    skib4=false;
    skib5=false;
    skib6=false;
  }
  //Skriver over de to bræt hvem brættet tilhører
  textSize(20);
  text("Dit bræt",250,40);
  text("Din modstanders bræt",790,40);

//viser skibet man er ved at placere under musen
  if (placering && !ikkevisskib) {
    textSize(20);
    text("Tryk r for at rotere dit skib",width/2,20);
    fill(150);
    switch(placeringtur) {
    case 0:
      if (rotated) {
        ellipse(mouseX, mouseY, 40, 230);
      } else {
        ellipse(mouseX, mouseY, 230, 40);
      }
      break;
    case 1:
      if (rotated) {
        ellipse(mouseX, mouseY+25, 40, 180);
      } else {
        ellipse(mouseX+25, mouseY, 180, 40);
      }
      break;
    case 2:
      if (rotated) {
        ellipse(mouseX, mouseY, 40, 130);
      } else {
        ellipse(mouseX, mouseY, 130, 40);
      }
      break;
    case 3:
      if (rotated) {
        ellipse(mouseX, mouseY, 40, 130);
      } else {
        ellipse(mouseX, mouseY, 130, 40);
      }
      break;
    case 4:
      if (rotated) {
        ellipse(mouseX, mouseY-25, 40, 80);
      } else {
        ellipse(mouseX-25, mouseY, 80, 40);
      }
      break;
    case 5:
      if (rotated) {
        ellipse(mouseX, mouseY-25, 40, 80);
      } else {
        ellipse(mouseX-25, mouseY, 80, 40);
      }
      break;
    }
    fill(255);
  }
}
