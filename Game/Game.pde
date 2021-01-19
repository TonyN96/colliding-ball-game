//Importing JOptionPane
import javax.swing.*;

//Importing the Ball, Player and User classes
Ball ball;
Player player;
User user;

//Current game data
int ballCount = 5;
int ballsCollided = 0;

//Tournament data
int gamesPlayed = 0;
float timeCheck = 0.0;

//Array of balls
Ball balls[] = new Ball[ballCount];

//Setup method
void setup() {

  //Setting the size of the display window
  size(500, 500);
  
  //Setting the mouse cursor to invisible
  noCursor();

  //Initiating new Player object
  player = new Player(width/2, height/2, 20);
  //Initiating new User object
  user = new User(JOptionPane.showInputDialog("Please enter your name:"),
    parseInt(JOptionPane.showInputDialog
    ("Please enter how many games you would like to play:\n(recommended max. 5)")));

  //Validating player name entered
  user.nameValidation();

  /* Yes/No Option Dialog used as a way of recording when user begins first game
   (i.e. timeCheck variable records when user clicks 'YES' to begin first game */
  int response = JOptionPane.showConfirmDialog(null, "Welcome " + user.getName()
    + "\nWould you like to play the first game in your tournament?", 
    "Play first game?", JOptionPane.YES_NO_OPTION);
  if (response == JOptionPane.YES_OPTION) {
    timeCheck = millis()/1000.0;
  } else {
    exit();
  }

  //Populating balls array with balls
  for (int x = 0; x < balls.length; x++) {
    balls[x] = new Ball(random(15, width - 15), random(15, height-15), 
      random(15, 40), (random(0+gamesPlayed, 1+gamesPlayed)), 
      random(0+gamesPlayed, 1+gamesPlayed));
    if (x%2 == 1) {
      //Send every second ball in opposite direction
      balls[x].speedX *= -1;
      balls[x].speedY *= -1;
    }
  }
}

void draw() {

  background(150);

  //Methods used to display and move each balls in the balls array
  for (int x = 0; x < balls.length; x++) {
    balls[x].displayBall();
    balls[x].moveBall();
  }

  //Methods used to display and move player
  player.displayPlayer();
  player.movePlayer();

  //Method displaying number of balls collided and current time
  displayScore();

  //Method checking if balls have collided with the player
  collisionStatus();

  //Method checking if all balls have been collided with
  checkScore();

  //Making a ball invisible if it has been collided with (by setting diameter to 0.0)
  for (int x = 0; x < balls.length; x++) {
    if (balls[x].collisionStatus == true) {
      balls[x].setDiameter(0.0);
    }
  }
}

//Method which checks if balls have collided with player
void collisionStatus() {

  //Looping through each ball in the balls array
  for (int x = 0; x < balls.length; x++) {

    /* Calculating if the the X and Y positions of ball is colliding with X and Y positions of player.
     Also checking that the collision status of the ball is set to false */
    float playerDistanceY = abs(player.getYPos() - balls[x].getYPos());
    float playerDistanceX = abs(player.getXPos() - balls[x].getXPos());
    if ( ( playerDistanceX < ( (player.getDiameter()/2) + (balls[x].getDiameter()/2) ) )
      && ( playerDistanceY < ( (player.getDiameter()/2) + (balls[x].getDiameter()/2) ) )
      && (balls[x].collisionStatus == false) ) {
      /* If all three of these conditions are true,
       the collision status of the ball is now set to true
       and the ballsCollided variable is increased by 1 */
      balls[x].setCollisionStatus(true);
      ballsCollided++;
    }
  }
}

//Method used to reset aspects of the game when a new game has been started
void resetGame() {
  //Timecheck variable used to record time elapsed up until start of current game
  timeCheck = millis()/1000.0;
  //Resetting player to centre of display window
  player.setXPos(width/2);
  player.setYPos(height/2);
  /* Number of balls collided rest to 0 and
   their properties (collision status and diameter) also reset. */
  ballsCollided = 0;
  for (int x = 0; x < balls.length; x++) {
    balls[x].setCollisionStatus(false);
    balls[x].setDiameter(random(10, 30));
  }
}

//Method used to check of all balls have been collided with
void checkScore() {
  if (ballsCollided == balls.length) {
    //If all balls have been collided with, the user's time is recorded
    user.addTime(float(nf(millis()/1000.0 - timeCheck, 0, 2)));
    gamesPlayed++;
    //While loop used to add an extra ten balls to array of balls for the next game
    int x = 0;
    while (x < 10) {
      balls = (Ball[])append(balls, new Ball(random(15, width - 15), //[1]
        random(15, height-15), random(15, 40), (random(0+gamesPlayed, 1+gamesPlayed)), 
        random(0+gamesPlayed, 1+gamesPlayed)));
      x++;
    }
    endGame();
  }
}

//Method used to display the game information (balls collided and current time)
void displayScore() {
  fill(0);
  textSize(30);
  text(ballsCollided + "/" + balls.length, 20, 50);
  text(nf(millis()/1000.0 - timeCheck, 0, 2), 400, 50); //[2]
}

//Method called when all balls are collided with and game ends
void endGame() {
  if (gamesPlayed < user.times.length) {
    int response = JOptionPane.showConfirmDialog(null, "Well done "
      + user.getName() + "!\nYour time was "
      + user.times[gamesPlayed - 1]
      + " seconds.\nWould you like to play the next game in your tournament?", 
      "Play next game?", JOptionPane.YES_NO_OPTION);
    if (response == JOptionPane.YES_OPTION) {
      resetGame();
    } else {
      endTournament();
    }
  } else {
    endTournament();
  }
}

void endTournament() {
  JOptionPane.showMessageDialog(frame, 
    user.toString(), 
    "Final score", 
    JOptionPane.PLAIN_MESSAGE);
  exit();
}
