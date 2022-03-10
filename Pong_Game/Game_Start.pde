void gameStart() {
  background(225);
  
  ballY += ballYSpeed;
  ballX -= ballXSpeed;
  
  line(leftNetX, netY, leftNetX, netY2);
  line(rightNetX, netY, rightNetX, netY2);
  line(lineX, lineY, lineX, lineY2);
  

  leftPaddleCreate();
  rightPaddleCreate();

  fill(225);
  rect(sB1X, sB1Y, sB1Width, sB1Height);
  rect(sB2X, sB2Y, sB2Width, sB2Height);
  fill(255);

  fill(0);
  text(score1, sB1X, sB1Y, sB1Width, sB1Height);
  text(score2, sB2X, sB2Y, sB2Width, sB2Height);
  fill(255);
  
fill(ballColor);
  
  ellipse(ballX, ballY, ballWidth, ballHeight);
  fill(255);
  ifStatements();
}
