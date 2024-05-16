void vindertjek () {
  if(!placering){
  player1vundet=true;
  player2vundet=true;
  for (int i=0; i<10; i++) {
    for (int t=0; t<10; t++) {
      if (player2[i][t]%2==0 && player2[i][t]!=0) {
        player1vundet=false;
      }
      if (player1[i][t]%2==0 && player1[i][t]!=0) {
        player2vundet=false;
      }
    }
  }
  }
}
