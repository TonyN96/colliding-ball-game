public class Ball {

  //Variables
  private float xPos;
  private float yPos;
  private float diameter;
  private float speedX;
  private float speedY;
  private boolean collisionStatus = false;

  //Constructor
  public Ball(float xPos, float yPos, float diameter, float speedX, float speedY) {
    setXPos(xPos);
    setYPos(yPos);
    setDiameter(diameter);
    setSpeedX(speedX);
    setSpeedY(speedY);
  }

  //Method used to display the ball
  public void displayBall() {
    fill(255);
    ellipse(xPos, yPos, diameter, diameter);
  }

  //Method used to move the ball
  public void moveBall() {

    //Changing direction of ball it comes in contact with edge of display window
    if (xPos > width - diameter/2) {
      xPos = width - diameter/2;
      speedX *= -1;
    } else if (xPos < diameter/2) {
      xPos = diameter/2;
      speedX *= -1;
    }

    //Changing direction of ball it comes in contact with edge of display window
    if (yPos > height - diameter/2) {
      yPos = height - diameter/2;
      speedY *= -1;
    } else if (yPos < diameter/2) {
      yPos = diameter/2;
      speedY *= -1;
    }

    //Moving ball by adding speedX and speedY variables to it's X and Y positions
    xPos += speedX;
    yPos += speedY;
  }

  //Getters
  public float getXPos() {
    return xPos;
  }

  public float getYPos() {
    return yPos;
  }

  public float getDiameter() {
    return diameter;
  }

  public float getSpeedX() {
    return speedX;
  }

  public float getSpeedY() {
    return speedY;
  }

  public boolean getCollisionStatus() {
    return collisionStatus;
  }

  //Setters
  public void setXPos(float xPos) {
    this.xPos = xPos;
  }

  public void setYPos(float yPos) {
    this.yPos = yPos;
  }

  public void setDiameter(float diameter) {
    this.diameter = diameter;
  }

  public void setSpeedX(float speedX) {
    this.speedX = speedX;
  }

  public void setSpeedY(float speedY) {
    this.speedY = speedY;
  }

  public void setCollisionStatus(boolean collisionStatus) {
    this.collisionStatus = collisionStatus;
  }
}
