void population() {
  scoreFont = createFont("Harrington", 60);
  score1 = "0";
  score2 = "0"; 
  textFont(scoreFont);
  //Press E for Slow, Press B for Regular, Press F for Fast!
  rulesFont = createFont("arial", 60);
  leftWin = "Right Player Wins";
  rightWin = "Left Player Wins";
  winRules = "Score 3 Goals To Win The Game!";
  beginRules = "To Start The Game Click HERE! Press Q at anytime to Quit the game";
  winText = "Click Here to Play Again!";
  winText1 = "Click Here to Quit the Game!";
  typeText = "One Player";
  typeText1 = "Two Players";
  screenSaverText = "Screen Saver!";
  textFont(rulesFont);

  if(widthRatio >= 1200){
    paddleFont = createFont("arial",25);
  }else paddleFont = createFont("arial",15);
  leftPaddleRules = "LEFT PADDLE: W and S";
  leftPaddleRules1 = "Click Here for Slow Paddle";
  leftPaddleRules2 = "Click Here for Regular Paddle";
  leftPaddleRules3 = "Click Here for Fast Paddle";
  rightPaddleRules = "RIGHT PADDLE: Up and Down";
  textFont(paddleFont);

  textAlign (CENTER, CENTER);
  ball1X = width*1/2;
  ballY = height*1/2;
  ballX = width*1/2;
  ballY= height*1/2;
  ballWidth = width*1/75;
  ballHeight = width*1/75;



  leftPaddleX = width*1/50;
  leftPaddleWidth = width*1/85;
  leftPaddleHeight = height*2/10;
  leftPaddleY = height*1/2-leftPaddleHeight/2;


  rightPaddleX = width-leftPaddleX;
  rightPaddleWidth = width*1/85*-1;
  rightPaddleHeight = height*2/10;
  rightPaddleY = height*1/2-rightPaddleHeight/2;


  rightNetX = rightPaddleX;
  leftNetX = leftPaddleX;
  netY = height*0;
  netY2 = height;


  sB1Y = height*0;
  sB1Width = width*5/50;
  sB1Height = height*1/8;
  sB1X = width*1/4-sB1Width/2;


  sB2Y = height*0;
  sB2Width = width*5/50;
  sB2Height = height*1/8;
  sB2X = width*3/4-sB2Width/2;

  lineX = width*1/2;
  lineY = height*0;
  lineY2 = height;

  rulesX = width*1/5;
  rulesY = height*1/15;
  rulesWidth = width*3/5;
  rulesHeight = height*2/15;

  //typeX = width*1/2 - typeWidth/2;
  typeY= height*1/3;
  typeHeight = height*1/20;
  typeWidth = width*1/6;
  typeX = width*1/2 - typeWidth/2;

  type1Y = height*2/4;

  leftPaddleSpeedX = width*1/10;
  leftPaddleSpeedY = height*3/10;
  leftPaddleSpeed1Y = height*4/10;
  leftPaddleSpeed2Y = height*5/10;
  leftPaddleSpeed3Y = height*6/10;
  paddleSpeedWidth = width*2/8;
  paddleSpeedHeight = height*1/20;
  rightPaddleSpeedX = width - leftPaddleSpeedX - paddleSpeedWidth;
  rightPaddleSpeedY = height*2/7;

  beginX = width*3/10;
  beginY = height*5/7;
  beginWidth = width*2/5;
  beginHeight = height*1/8;

  button1X = width*1/7;

  buttonHeight = height*1/8;
  buttonWidth = width*1/4;
  buttonY = height*5/7;
  button2X = width-button1X-buttonWidth;
  
  screenSaverY = height*8/9;
}
