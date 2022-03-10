void startPage() {
//remake using a call function
  background(225);
  rect(rulesX, rulesY, rulesWidth, rulesHeight);
  rect(leftPaddleSpeedX, leftPaddleSpeedY, paddleSpeedWidth, paddleSpeedHeight);
  rect(leftPaddleSpeedX, leftPaddleSpeed1Y, paddleSpeedWidth, paddleSpeedHeight);
  rect(leftPaddleSpeedX, leftPaddleSpeed2Y, paddleSpeedWidth, paddleSpeedHeight);
  rect(leftPaddleSpeedX, leftPaddleSpeed3Y, paddleSpeedWidth, paddleSpeedHeight);
  rect(rightPaddleSpeedX, rightPaddleSpeedY, paddleSpeedWidth, paddleSpeedHeight);
  rect(rightPaddleSpeedX, leftPaddleSpeed1Y, paddleSpeedWidth, paddleSpeedHeight);
  rect(rightPaddleSpeedX, leftPaddleSpeed2Y, paddleSpeedWidth, paddleSpeedHeight);
  rect(rightPaddleSpeedX, leftPaddleSpeed3Y, paddleSpeedWidth, paddleSpeedHeight);
  rect(beginX, beginY, beginWidth, beginHeight);
  rect(typeX,typeY,typeWidth,typeHeight);
  rect(typeX,type1Y,typeWidth,typeHeight);
  rect(typeX,screenSaverY,typeWidth,typeHeight);

  fill(black);
  text(winRules, rulesX, rulesY, rulesWidth, rulesHeight);
  text(leftPaddleRules, leftPaddleSpeedX, leftPaddleSpeedY, paddleSpeedWidth, paddleSpeedHeight);
  fill(slowColor);
  text(leftPaddleRules1, leftPaddleSpeedX, leftPaddleSpeed1Y, paddleSpeedWidth, paddleSpeedHeight);
  fill(normalColor);
  text(leftPaddleRules2, leftPaddleSpeedX, leftPaddleSpeed2Y, paddleSpeedWidth, paddleSpeedHeight);
  fill(fastColor);
  text(leftPaddleRules3, leftPaddleSpeedX, leftPaddleSpeed3Y, paddleSpeedWidth, paddleSpeedHeight);
  fill(black);
  text(rightPaddleRules, rightPaddleSpeedX, rightPaddleSpeedY, paddleSpeedWidth, paddleSpeedHeight);
  fill(slowColor1);
  text(leftPaddleRules1, rightPaddleSpeedX, leftPaddleSpeed1Y, paddleSpeedWidth, paddleSpeedHeight);
  fill(normalColor1);
  text(leftPaddleRules2, rightPaddleSpeedX, leftPaddleSpeed2Y, paddleSpeedWidth, paddleSpeedHeight);
  fill(fastColor1);
  text(leftPaddleRules3, rightPaddleSpeedX, leftPaddleSpeed3Y, paddleSpeedWidth, paddleSpeedHeight);
  fill(black);

  fill(typeColor);
  text(typeText,typeX,typeY,typeWidth,typeHeight);
  fill(typeColor1);
  text(typeText1,typeX,type1Y,typeWidth,typeHeight);

  fill(beginColor);
  text(beginRules, beginX, beginY, beginWidth, beginHeight);
  fill(white);

  fill(ssColor);
  text(screenSaverText,typeX,screenSaverY,typeWidth,typeHeight);
  fill(white);


  if (mouseX >= beginX && mouseX <= beginX+beginWidth &&  mouseY >= beginY && mouseY <= beginY+beginHeight) {
    beginColor = #DDA0DD;
  } else beginColor = 0;
  if (mouseX >= leftPaddleSpeedX && mouseX <= leftPaddleSpeedX+paddleSpeedWidth && mouseY >= leftPaddleSpeed1Y && mouseY <= leftPaddleSpeed1Y+paddleSpeedHeight) {
    slowColor = #0090FF;
  } else slowColor = #0000FF;
  if (mouseX >= leftPaddleSpeedX && mouseX <= leftPaddleSpeedX+paddleSpeedWidth && mouseY >= leftPaddleSpeed2Y && mouseY <= leftPaddleSpeed2Y+paddleSpeedHeight) {
    normalColor = #FFA500;
  } else normalColor = #FF7000;
  if (mouseX >= leftPaddleSpeedX && mouseX <= leftPaddleSpeedX+paddleSpeedWidth && mouseY >= leftPaddleSpeed3Y && mouseY <= leftPaddleSpeed3Y+paddleSpeedHeight) {
    fastColor = #FF5050;
  } else fastColor = red;

  if (mouseX >= rightPaddleSpeedX && mouseX <= rightPaddleSpeedX+paddleSpeedWidth && mouseY >= leftPaddleSpeed1Y && mouseY <= leftPaddleSpeed1Y+paddleSpeedHeight) {
    slowColor1 = #0090FF;
  } else slowColor1 = #0000FF;
  if (mouseX >= rightPaddleSpeedX && mouseX <=rightPaddleSpeedX+paddleSpeedWidth && mouseY >= leftPaddleSpeed2Y && mouseY <= leftPaddleSpeed2Y+paddleSpeedHeight) {
    normalColor1 = #FFA500;
  } else normalColor1 = #FF7000;
  if (mouseX >= rightPaddleSpeedX && mouseX <= rightPaddleSpeedX+paddleSpeedWidth && mouseY >= leftPaddleSpeed3Y && mouseY <= leftPaddleSpeed3Y+paddleSpeedHeight) {
    fastColor1 = #FF5050;
  } else fastColor1 = red;
  
  if(mouseX >= typeX && mouseX <= typeX+typeWidth && mouseY >= typeY && mouseY <= typeY+typeHeight){
     typeColor = #DDA0DD;
  }else typeColor = black;
  if(mouseX >= typeX && mouseX <= typeX+typeWidth && mouseY >= type1Y && mouseY <= type1Y+typeHeight){
     typeColor1 = #DDA0DD;
  }else typeColor1 = black;
  if(mouseX >= typeX && mouseX <= typeX+typeWidth && mouseY >= screenSaverY && mouseY <= screenSaverY+typeHeight){
     ssColor = #DDA0DD;
  }else ssColor = black;
  
};
