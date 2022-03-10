void winScreen () {
  background(225);
  
  rect(rulesX, height*2/5, rulesWidth, rulesHeight);
  rect(button1X, buttonY, buttonWidth, buttonHeight);
  rect(button2X, buttonY, buttonWidth, buttonHeight);



  fill(red);
  if (player1Win == true) {
    text(leftWin, rulesX, height*2/5, rulesWidth, rulesHeight);
  } else if (player2Win == true) {
    text(rightWin, rulesX, height*2/5, rulesWidth, rulesHeight);
  };
  fill(winColor);
  text(winText, button1X, buttonY, buttonWidth, buttonHeight);
  fill(winColor1);
  text(winText1, button2X, buttonY, buttonWidth, buttonHeight);
  fill(white);



  if (mouseX >= button1X && mouseX <= button1X+buttonWidth && mouseY >= buttonY && mouseY <= buttonY+buttonHeight) {
    winColor = #DDA0DD;
  } else winColor = black;
  if (mouseX >= button2X && mouseX <= button2X+buttonWidth && mouseY >= buttonY && mouseY <= buttonY+buttonHeight) {
    winColor1 = #DDA0DD;
  } else winColor1 = black;
};
