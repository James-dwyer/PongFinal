void ifStatements() {


  if (ballY-ballHeight/2 <= height*0 || ballY+ballHeight/2 >= height) {
    ballYSpeed = ballYSpeed*-1;
  }
  if (leftGoalScore == false && rightGoalScore == false) {
    ballXSpeed=ballXSpeed;
  } else {
    ballXSpeed=0;
    ballYSpeed=0;
  }
  if (leftPaddleAI == true) {
    leftPaddleY = ballY-leftPaddleHeight/2;
  };
  if (rightPaddleAI == true) {
    rightPaddleY = ballY-rightPaddleHeight/2;
  };
  if (ballX-ballWidth/2<=leftNetX/2) {
    rightGoalScore = true;
    ballX = (width*0)+ballWidth/2;
  } else if (ballX+ballWidth/2 >= rightNetX+width*1/50)
  {
    leftGoalScore=true;
    ballX = (width)-ballWidth/2;
  }
  if (leftPaddleY < height*0) {
    leftPaddleY = height*0;
  };
  if (leftPaddleY+leftPaddleHeight > height) {
    leftPaddleY = height-leftPaddleHeight;
  };
  if (rightPaddleY < height*0) {
    rightPaddleY = height*0;
  };
  if (rightPaddleY+rightPaddleHeight > height) {
    rightPaddleY = height-rightPaddleHeight;
  };

  if (ballX-ballWidth/2 <= leftPaddleX+leftPaddleWidth && ballY <= leftPaddleY+leftPaddleHeight && ballY >= leftPaddleY) {
    ballXSpeed = ballXSpeed *=-1;
    ballXSpeed = ballXSpeed -= 1;
  
  }
  if (ballX+ballWidth/2 >= rightPaddleX+rightPaddleWidth && ballY <= rightPaddleY+rightPaddleHeight && ballY >= rightPaddleY) {
    ballXSpeed = ballXSpeed *=-1;
    ballXSpeed = ballXSpeed += 1;
 
  };
  
  if(ballXSpeed > 18 && ballXSpeed < 25){
  ballColor = #00FFFF;
  };
  if(ballXSpeed < -18 && ballXSpeed > -25){
  ballColor = #00FFFF;
  };
  
  if (ballXSpeed >= 10 && ballXSpeed <= 18) { 
    ballColor = #FF00FF;
  }  
  if (ballXSpeed <= -10 && ballXSpeed >= -18){
    ballColor = #FF00FF;
  };
  if (ballXSpeed <10 && ballXSpeed > 0){
    ballColor = white;
  };
  if (ballXSpeed > -10 && ballXSpeed <0){
    ballColor = white;
  };
  if (ballXSpeed >= 25 || ballXSpeed <= -25) { 
    if (ballX-ballWidth/2 <= leftPaddleX+leftPaddleWidth+leftPaddleWidth*2 && ballY <= leftPaddleY+leftPaddleHeight && ballY >= leftPaddleY) {
      ballXSpeed = ballXSpeed *=-1;
      ballXSpeed = -25;
      if(ballY-ballHeight/2 <= height*0){
        ballYSpeed = int(random(9));
      }else ballYSpeed = int(random(-9, 9));
      while (ballYSpeed == 0) {
        ballYSpeed = int(random(-9, 9));
        
      };
      if (ballY+ballHeight >= height)ballYSpeed *= -1; 
      if(ballY-ballHeight <= height*0)ballYSpeed *= -1;
    };
    if (ballX+ballWidth/2 >= rightPaddleX+rightPaddleWidth+rightPaddleWidth*2 && ballY <= rightPaddleY+rightPaddleHeight && ballY >= rightPaddleY) {
      ballXSpeed = ballXSpeed *=-1;
      ballXSpeed = 25;
      ballYSpeed = int(random(-9, 9));
      while (ballYSpeed == 0) {
        ballYSpeed = int(random(-9, 9));
       
      };
      if (ballY-ballHeight == height*0)ballYSpeed *= -1; 
      ;
    };
  }




  if (rightPaddleUp == true) rightPaddleY += rightPaddleSpeed;
  if (rightPaddleDown == true) rightPaddleY -= rightPaddleSpeed;
  if (leftPaddleUp == true) leftPaddleY += leftPaddleSpeed;
  if (leftPaddleDown == true) leftPaddleY -= leftPaddleSpeed;



  if (leftGoalScore == true && score1 == "0") {
    score1 = "1";
    ballX = width*1/2;
    ballY = height*1/2;
    ballYSpeed = int(random(-4, 4));
    ballXSpeed = int(random(-9, 9));
    while (ballYSpeed == 0) ballYSpeed = int(random(-4, 4));
    while (ballXSpeed == 0) ballXSpeed = int(random(-9, 9));
    leftGoalScore = false;
    leftPaddleHeight = height*2/12;

  };
  if (leftGoalScore == true && score1 == "1") {
    score1 = "2";
    ballX = width*1/2;
    ballY = height*1/2;
    ballYSpeed = int(random(-4, 4));
    ballXSpeed = int(random(-9, 9));
    while (ballYSpeed == 0) ballYSpeed = int(random(-4, 4));
    while (ballXSpeed == 0) ballXSpeed = int(random(-9, 9));
    leftGoalScore = false;
    leftPaddleHeight = height*2/15;
    
  };
  if (leftGoalScore == true && score1 == "2") {
    score1 = "3";
    leftGoalScore = false;
    win = true;
    player2Win = true;
    rules = true;leftPaddle = false;rightPaddle = false;
 
  };

  if (rightGoalScore == true && score2 == "0") {
    score2 = "1";
    ballX = width*1/2;
    ballY = height*1/2;
    ballYSpeed = int(random(-4, 4));
    ballXSpeed = int(random(-9, 9));
    while (ballYSpeed == 0) ballYSpeed = int(random(-4, 4));
    while (ballXSpeed == 0) ballXSpeed = int(random(-9, 9));
    rightGoalScore = false;
    rightPaddleHeight = height*2/12;
 
  };
  if (rightGoalScore == true && score2 == "1") {
    score2 = "2";
    ballX = width*1/2;
    ballY = height*1/2;
    ballYSpeed = int(random(-4, 4));
    ballXSpeed = int(random(-9, 9));
    while (ballYSpeed == 0) ballYSpeed = int(random(-4, 4));
    while (ballXSpeed == 0) ballXSpeed = int(random(-9, 9));
    rightGoalScore = false;
    rightPaddleHeight = height*2/15;

  };
  if (rightGoalScore == true && score2 == "2") {
    score2 = "3";
    rightGoalScore = false;
    win = true;
    player1Win = true;

    //rules = true;leftPaddle = false;rightPaddle = false;
  };
};
