public class User {

  //Variables
  private String name;
  private float[] times;
  private int count;

  //Constructor
  public User(String name, int gameCount) {
    this.name = name;
    times = new float[gameCount];
    count = 0;
  }

  //Method used to add the user's time to the times array
  public void addTime(float time) {
    if (time >= 0) {
      times[count] = time;
      count++;
    }
  }

  //Method used to display the user's times as a string when tournament ends
  public String toString() {
    String str = "Well done " + name + "!\n\nYour results:\n";
    float averageTime = 0.0;
    for (int x = 0; x < count; x++) {
      str = str + "Game " + (x+1) + ": " + times[x] + " seconds\n";
      averageTime += times[x];
    }
    //Calculating average time for times array
    averageTime /= count;
    str += "\nYour average time was " + (nf(averageTime, 0, 2)) + " seconds."; //[2]
    return str;
  }

  //Method used for validating user's name
  public void nameValidation() {
    //default name of "user" if no name is entered
    if (this.name.length() == 0) {
      this.name = "user";
    } 
    //Limit of 20 characters for length of user's name
    else if (name.length() > 20) {
      this.name = this.name.substring(0, 20);
    }

    //Setting first letter of user's name to uppercase if it is lowercase
    if (Character.isLowerCase(name.charAt(0))) {
      name = name.substring(0, 1).toUpperCase() + name.substring(1).toLowerCase();
    }
  }

  //Getters
  public String getName() {
    return name;
  }

  public float[] getTimes() {
    return times;
  }

  public int getCount() {
    return count;
  }

  //Setters
  public void setUserName(String name) {
    this.name = name;
  }

  public void setTimes(float[] times) {
    this.times = times;
  }

  public void setCount(int count) {
    this.count = count;
  }
}
