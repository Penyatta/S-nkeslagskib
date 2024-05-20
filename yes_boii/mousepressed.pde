void mousePressed () { //<>//
  if (startmenu) {
    startmenu=false;
  } else {
    y=floor(int(mouseX)/firkantstørrelse);
    x=floor(int(mouseY-50)/firkantstørrelse);
    //placering af skibe ved at ændre værdierne i matrixet til at afspejle de forskellige skibe
    if (!delaystart1 && placering && x<10 && y<10) {
      if (player1turn) {
        switch(placeringtur) {
        case 0:
          if (rotated) {
            if (x>1&&x<8) {
              player1 [x][y]=2;
              player1 [x-1][y]=2;
              player1 [x-2][y]=2;
              player1 [x+1][y]=2;
              player1 [x+2][y]=2;
              placeringtur++;
            }
          } else {
            if (y>1&&y<8) {
              player1 [x][y]=2;
              player1 [x][y-1]=2;
              player1 [x][y-2]=2;
              player1 [x][y+1]=2;
              player1 [x][y+2]=2;
              placeringtur++;
            }
          }
          break;
        case 1:
          if (rotated) {
            if (x>0 && x<8 && player1 [x][y]==0 && player1 [x-1][y]==0 && player1 [x+1][y]==0 && player1 [x+2][y]==0) {
              player1 [x][y]=4;
              player1 [x-1][y]=4;
              player1 [x+1][y]=4;
              player1 [x+2][y]=4;
              placeringtur++;
            }
          } else {
            if (y>0 && y<8 && player1 [x][y]==0 && player1 [x][y-1]==0 && player1 [x][y+1]==0 && player1 [x][y+2]==0) {
              player1 [x][y]=4;
              player1 [x][y-1]=4;
              player1 [x][y+1]=4;
              player1 [x][y+2]=4;
              placeringtur++;
            }
          }
          break;
        case 2:
          if (rotated) {
            if (x>0 && x<9 && player1 [x][y]==0 && player1 [x-1][y]==0 && player1 [x+1][y]==0) {
              player1 [x][y]=6;
              player1 [x-1][y]=6;
              player1 [x+1][y]=6;

              placeringtur++;
            }
          } else {
            if (y>0 && y<9 && player1 [x][y]==0 && player1 [x][y-1]==0 && player1 [x][y+1]==0) {
              player1 [x][y]=6;
              player1 [x][y-1]=6;
              player1 [x][y+1]=6;
              placeringtur++;
            }
          }
          break;
        case 3:
          if (rotated) {
            if (x>0 && x<9 && player1 [x][y]==0 && player1 [x-1][y]==0 && player1 [x+1][y]==0) {
              player1 [x][y]=8;
              player1 [x-1][y]=8;
              player1 [x+1][y]=8;

              placeringtur++;
            }
          } else {
            if (y>0 && y<9 && player1 [x][y]==0 && player1 [x][y-1]==0 && player1 [x][y+1]==0) {
              player1 [x][y]=8;
              player1 [x][y-1]=8;
              player1 [x][y+1]=8;
              placeringtur++;
            }
          }
          break;
        case 4:
          if (rotated) {
            if (x>0 && x<10 && player1 [x][y]==0 && player1 [x-1][y]==0) {
              player1 [x][y]=10;
              player1 [x-1][y]=10;
              placeringtur++;
            }
          } else {
            if (y>0 && y<10 && player1 [x][y]==0 && player1 [x][y-1]==0) {
              player1 [x][y]=10;
              player1 [x][y-1]=10;
              placeringtur++;
            }
          }
          break;
        case 5:
          if (rotated) {
            if (x>0 && x<10 && player1 [x][y]==0 && player1 [x-1][y]==0) {
              player1 [x][y]=12;
              player1 [x-1][y]=12;
              placeringtur++;
            }
          } else {
            if (y>0 && y<10 && player1 [x][y]==0 && player1 [x][y-1]==0) {
              player1 [x][y]=12;
              player1 [x][y-1]=12;
              placeringtur++;
            }
          }
          break;
        }
        if (placeringtur==6) {
          placeringtur=0;
          ikkevisskib=true;
          TegnBræt();
          delaystart1=true;
        }
      } else {
        switch(placeringtur) {
        case 0:
          if (rotated) {
            if (x>1&&x<8) {
              player2 [x][y]=2;
              player2 [x-1][y]=2;
              player2 [x-2][y]=2;
              player2 [x+1][y]=2;
              player2 [x+2][y]=2;
              placeringtur++;
            }
          } else {
            if (y>1&&y<8) {
              player2 [x][y]=2;
              player2 [x][y-1]=2;
              player2 [x][y-2]=2;
              player2 [x][y+1]=2;
              player2 [x][y+2]=2;
              placeringtur++;
            }
          }
          break;
        case 1:
          if (rotated) {
            if (x>0 && x<8 && player2 [x][y]==0 && player2 [x-1][y]==0 && player2 [x+1][y]==0 && player2 [x+2][y]==0) {
              player2 [x][y]=4;
              player2 [x-1][y]=4;
              player2 [x+1][y]=4;
              player2 [x+2][y]=4;
              placeringtur++;
            }
          } else {
            if (y>0 && y<8 && player2 [x][y]==0 && player2 [x][y-1]==0 && player2 [x][y+1]==0 && player2 [x][y+2]==0) {
              player2 [x][y]=4;
              player2 [x][y-1]=4;
              player2 [x][y+1]=4;
              player2 [x][y+2]=4;
              placeringtur++;
            }
          }
          break;
        case 2:
          if (rotated) {
            if (x>0 && x<9 && player2 [x][y]==0 && player2 [x-1][y]==0 && player2 [x+1][y]==0) {
              player2 [x][y]=6;
              player2 [x-1][y]=6;
              player2 [x+1][y]=6;

              placeringtur++;
            }
          } else {
            if (y>0 && y<9 && player2 [x][y]==0 && player2 [x][y-1]==0 && player2 [x][y+1]==0) {
              player2 [x][y]=6;
              player2 [x][y-1]=6;
              player2 [x][y+1]=6;
              placeringtur++;
            }
          }
          break;
        case 3:
          if (rotated) {
            if (x>0 && x<9 && player2 [x][y]==0 && player2 [x-1][y]==0 && player2 [x+1][y]==0) {
              player2 [x][y]=8;
              player2 [x-1][y]=8;
              player2 [x+1][y]=8;

              placeringtur++;
            }
          } else {
            if (y>0 && y<9 && player2 [x][y]==0 && player2 [x][y-1]==0 && player2 [x][y+1]==0) {
              player2 [x][y]=8;
              player2 [x][y-1]=8;
              player2 [x][y+1]=8;
              placeringtur++;
            }
          }
          break;
        case 4:
          if (rotated) {
            if (x>0 && x<10 && player2 [x][y]==0 && player2 [x-1][y]==0) {
              player2 [x][y]=10;
              player2 [x-1][y]=10;
              placeringtur++;
            }
          } else {
            if (y>0 && y<10 && player2 [x][y]==0 && player2 [x][y-1]==0) {
              player2 [x][y]=10;
              player2 [x][y-1]=10;
              placeringtur++;
            }
          }
          break;
        case 5:
          if (rotated) {
            if (x>0 && x<10 && player2 [x][y]==0 && player2 [x-1][y]==0) {
              player2 [x][y]=12;
              player2 [x-1][y]=12;
              placeringtur++;
            }
          } else {
            if (y>0 && y<10 && player2 [x][y]==0 && player2 [x][y-1]==0) {
              player2 [x][y]=12;
              player2 [x][y-1]=12;
              placeringtur++;
            }
          }
          break;
        }
        if (placeringtur==6) {
          placering=false;
          TegnBræt();
          delaystart=true;
        }
      }
    }
    y=floor(int(mouseX-530)/firkantstørrelse);

    //registrere skud
    if (!placering && !delaystart && !delay && y<10 && y>=0 && x<10 && x>=0 ) {

      if (player1turn) {
        if (player2[x][y]%2==0) {
          player2[x][y]++;
          TegnBræt();
          if (player2[x][y]==1) {
            Water.play();
          }
          if (player2[x][y]!=1&&player2[x][y]%2==1) {
            Hit.play();
          }
          if (!flereskud || !(player2[x][y]>2)) {
            delaystart=true;
          }
        }
      } else {
        if (player1[x][y]%2==0) {
          player1[x][y]++;
          TegnBræt();
          if (player1[x][y]==1) {
            Water.play();
          }
          if (player1[x][y]!=1&&player1[x][y]%2==1) {
            Hit.play();
          }
          if (!flereskud || !(player1[x][y]>2)) {
            delaystart=true;
          }
        }
      }
    }
  }
}
