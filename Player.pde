public class Player {

  //Variables
  private float xPos;
  private float yPos;
  private float diameter;
  private float speed = 3;

  //Constructor
  public Player(float xPos, float yPos, float diameter) {
    setXPos(xPos);
    setYPos(yPos);
    setDiameter(diameter);
  }

  //Display player
  public void displayPlayer() {
    fill(153, 255, 102);
    ellipse(xPos, yPos, diameter, diameter);
  }

  //Method used to move the player
  public void movePlayer() {

    //Ensuring player cannot be moved off the display window
    if (xPos > width - diameter/2) {
      xPos = width - diameter/2;
    } else if (xPos < diameter/2) {
      xPos = diameter/2;
    }

    //Ensuring player cannot be moved off the display window
    if (yPos > height - diameter/2) {
      yPos = height - diameter/2;
    } else if (yPos < diameter/2) {
      yPos = diameter/2;
    }

    /* Checking if arrow key or W, A, S, D key has been pressed,
     and if it has, moving the player in the desired direction */
    if (keyPressed) {
      if ((keyCode == RIGHT) || (key == 'd') || (key == 'D')) {
        xPos += speed;
      } else if ((keyCode == LEFT) || (key == 'a') || (key == 'A')) {
        xPos -= speed;
      } else if ((keyCode == UP) || (key == 'w') || (key == 'W')) {
        yPos -= speed;
      } else if ((keyCode == DOWN) || (key == 's') || (key == 'S')) {
        yPos += speed;
      }
    }
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

  public float getSpeed() {
    return speed;
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

  public void setSpeed(float speed) {
    this.speed = speed;
  }
}
