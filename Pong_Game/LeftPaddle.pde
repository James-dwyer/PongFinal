boolean leftPaddleUp = false, leftPaddleDown = false;
boolean leftPaddleAI = false;
void leftPaddleKeyPressed() {

  if (key == 'w'|| key == 'W') {
    leftPaddleUp = true;
    leftPaddleDown = false;
    leftPaddleAI = false;
  }
  if (key == 's' || key == 'S') {
    leftPaddleUp = false;
    leftPaddleDown = true;
    leftPaddleAI = false;
  };
  if (key == 'a' || key == 'A') {
    leftPaddleUp = false;
    leftPaddleDown = false;
    leftPaddleAI = false;
  };
  if (key == '1') {
    leftPaddleAI = true;
  } 
  if (key == '3') {
    leftPaddleAI = true;
    rightPaddleAI = true;
  };
  if (leftPaddleSpeed == 0) {
    if (key == 'e' || key == 'E') {
      leftPaddleSpeed = -2;
      leftPaddle = true;
    };
    if (key == 'b' || key == 'B') {
      leftPaddleSpeed = -6;
      leftPaddle = true;
    };
    if (key == 'f' || key == 'F') {
      leftPaddleSpeed = -10;
      leftPaddle = true;
    }
    ;
  };
}

void leftPaddleCreate() {
  rect(leftPaddleX, leftPaddleY, leftPaddleWidth, leftPaddleHeight);
};
