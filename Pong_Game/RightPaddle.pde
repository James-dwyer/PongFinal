boolean rightPaddleUp = false, rightPaddleDown = false, rightPaddleAI = false;
void rightPaddleKeyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      rightPaddleUp = true;
      rightPaddleDown = false;
      rightPaddleAI = false;
    }
    if (keyCode == DOWN) {
      rightPaddleUp = false;
      rightPaddleDown = true;
      rightPaddleAI = false;
    };
    if (keyCode == LEFT) {
      rightPaddleUp = false;
      rightPaddleDown = false;
      rightPaddleAI = false;
    };
  }
  if (key == '2') {
    rightPaddleAI = true;
  } 


  
};

void rightPaddleCreate() {
  rect(rightPaddleX, rightPaddleY, rightPaddleWidth, rightPaddleHeight);
};
