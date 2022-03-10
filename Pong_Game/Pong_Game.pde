float leftPaddleX, leftPaddleY, leftPaddleWidth, leftPaddleHeight, leftPaddleSpeed = 0;
float rightPaddleX, rightPaddleY, rightPaddleWidth, rightPaddleHeight, rightPaddleSpeed = 0;
float ballX,ball1X,ball1Y, ballY, ballWidth, ballHeight;
float leftNetX, netY, leftNetX2, netY2, rightNetX;
float sB1X, sB2X, sB1Y, sB2Y, sB1Width, sB2Width, sB2Height, sB1Height;
float lineX, lineY, lineY2;
boolean leftGoalScore, rightGoalScore;
int ballXSpeed, ballYSpeed; PFont scoreFont, rulesFont, paddleFont;
String score1 = "0", score2 = "0", winRules, leftPaddleRules, leftPaddleRules1, leftPaddleRules2, leftPaddleRules3, rightPaddleRules, beginRules, winText, leftWin, rightWin, winText1,typeText,typeText1,screenSaverText;
boolean player1, player2;
color ballColor = 255, white = 255, black=0, red = #FF0000, orange = #FF7000, blue = #0000FF, beginColor = black, winColor = black, winColor1 = black, slowColor1 = blue, normalColor1 = orange, fastColor1 = red, slowColor = blue, normalColor = orange, fastColor = red, typeColor = black,typeColor1 = black,ssColor = black;
float leftPaddleSpeedX, leftPaddleSpeedY, leftPaddleSpeed1Y, leftPaddleSpeed2Y, leftPaddleSpeed3Y, paddleSpeedWidth, paddleSpeedHeight, rightPaddleSpeedY, rightPaddleSpeedX;
float rulesX, rulesY, rulesWidth, rulesHeight;
float beginX, beginY, beginWidth, beginHeight;
float button1X, button2X, buttonY, buttonWidth, buttonHeight;
boolean rules = true, leftPaddle = false, rightPaddle = false, win = false, player1Win = false, player2Win = false,playType = false;
int widthRatio = displayWidth;
int heightRatio = displayHeight;
int number;
float typeX,type1Y,typeY,typeWidth,typeHeight,screenSaverY;


;


void setup() {
  fullScreen();
  //size(1200,800);
  widthRatio = width;
  heightRatio = height;



  population();

  ballYSpeed = int(random(-4, 4));
  ballXSpeed = int(random(-9, 9));

  while (ballYSpeed == 0) ballYSpeed = int(random(-4, 4));
  while (ballXSpeed == 0) ballXSpeed = int(random(-9, 9));
};



void draw() {

  if (width>height) {
    if (win == false) {
      if (rules == false && leftPaddle == true && rightPaddle == true && playType == true) {
        gameStart();
      } else startPage();
      ;
    } else winScreen();
  } else { 
    noLoop();
    println("flip Screen to play");
  };
};

void keyPressed() {
  if (key == 'q' || key == 'Q') {
    exit();
  };

  leftPaddleKeyPressed();
  rightPaddleKeyPressed();
}
void mousePressed() {
  if(rules == true){
    if(mouseX >= typeX && mouseX <= typeX+typeWidth && mouseY >= screenSaverY && mouseY <= screenSaverY+typeHeight){
    leftPaddleAI = true;
    rightPaddleAI = true;
    rightPaddle = true;
    leftPaddle = true;
    rules = false;
    playType = true;
  };
  if(mouseX >= typeX && mouseX <= typeX+typeWidth && mouseY >= typeY && mouseY <= typeY+typeHeight){
   rightPaddleAI = true;
   playType = true;
   rightPaddle = true;
  }else if(mouseX >= typeX && mouseX <= typeX+typeWidth && mouseY >= type1Y && mouseY <= type1Y+typeHeight){
  rightPaddleAI = false;
  playType = true;
  };
  if (mouseX > beginX && mouseX < beginX+beginWidth &&  mouseY > beginY && mouseY < beginY+beginHeight) {
    rules = false;
  }
  if (leftPaddleSpeed == 0) {
    if (mouseX >= leftPaddleSpeedX && mouseX <= leftPaddleSpeedX+paddleSpeedWidth && mouseY >= leftPaddleSpeed1Y && mouseY <= leftPaddleSpeed1Y+paddleSpeedHeight) {
      leftPaddleSpeed = -2;
      leftPaddle = true;
    } else if (mouseX >= leftPaddleSpeedX && mouseX <= leftPaddleSpeedX+paddleSpeedWidth && mouseY >= leftPaddleSpeed2Y && mouseY <= leftPaddleSpeed2Y+paddleSpeedHeight) {
      leftPaddleSpeed = -6;
      leftPaddle = true;
    } else if (mouseX >= leftPaddleSpeedX && mouseX <= leftPaddleSpeedX+paddleSpeedWidth && mouseY >= leftPaddleSpeed3Y && mouseY <= leftPaddleSpeed3Y+paddleSpeedHeight) {
      leftPaddleSpeed = -10;
      leftPaddle = true;
    };
  }

  if (rightPaddleSpeed == 0) {
    if (mouseX >= rightPaddleSpeedX && mouseX <= rightPaddleSpeedX+paddleSpeedWidth && mouseY >= leftPaddleSpeed1Y && mouseY <= leftPaddleSpeed1Y+paddleSpeedHeight) {
      rightPaddleSpeed = -2;
      rightPaddle = true;
    } else if (mouseX >= rightPaddleSpeedX && mouseX <= rightPaddleSpeedX+paddleSpeedWidth && mouseY >= leftPaddleSpeed2Y && mouseY <= leftPaddleSpeed2Y+paddleSpeedHeight) {
      rightPaddleSpeed = -6;
      rightPaddle = true;
    } else if (mouseX >= rightPaddleSpeedX && mouseX <= rightPaddleSpeedX+paddleSpeedWidth && mouseY >= leftPaddleSpeed3Y && mouseY <= leftPaddleSpeed3Y+paddleSpeedHeight) {
      rightPaddleSpeed = -10;
      rightPaddle = true;
    };
  };
  

  };
 if(win == true){
  if (mouseX >= button1X && mouseX <= button1X+buttonWidth && mouseY >= buttonY && mouseY <= buttonY+buttonHeight){
  leftPaddleHeight = height*2/10;
  rightPaddleHeight = height*2/10;
  ballYSpeed = int(random(-4, 4));
  ballXSpeed = int(random(-9, 9));
  rightPaddleSpeed = 0;
  leftPaddleSpeed = 0;
  leftPaddle = false;
  rightPaddle = false;
  rules=true;
  score1 = "0";
  score2 = "0";
  ballX = width/2;
  ballY = height/2;
  leftPaddleY = height*1/2-leftPaddleHeight/2;
  rightPaddleY = height*1/2-rightPaddleHeight/2;
  leftPaddleDown = false;
  leftPaddleUp = false;
  rightPaddleUp = false;
  rightPaddleDown = false;
  rightPaddleAI = false;
  win=false;
 
  };
   if (mouseX >= button2X && mouseX <= button2X+buttonWidth && mouseY >= buttonY && mouseY <= buttonY+buttonHeight){
   exit();
   };


};
}
