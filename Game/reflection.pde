/* Reflection

Name: Tony Naughton

Student Number: 20091454

Overall mark: 80/100 - 80%

Part A - 5/5 - 100%
-----------------------------
Readme accurately describes the project and how it functions.
Reflection completed fully and includes line numbers in each section.
Video aheres to the guidelines in "Assignment Specification"
and has comprehensive audio track accompanying it.


Part B - 5/5 - 100%
-----------------------------
Mixture of single and multi-line comments.
Every aspect of the program described and labelled through comments.
Indentation used correctly throughout.
Adhered to expected naming standards - used camelCasing and meaningful names
for methods and variables.


Part C - 4/5 - 80%
-----------------------------
Multiple nested if statements used:
Game - Line 166
Player - Line 42

Multiple boolean conditions and branches used:
Game - Line 44, 46, 55, 88, 104, 105, 106, 134, 160, 166, 168, 171.
Ball - Line 30, 33, 39, 42.
Player - Line 26, 28, 33, 35, 41, 42, 44, 46, 48.
User - Line 40, 44, 49.

For loop (Game - Line 49) and While loop (Game - Line 138) integrated.


Part D - 4/5 - 80%
-----------------------------
The game functions as it is intended to.
Many objects are created from the Ball class
and just one object from the Player class.
The game is controlled by user input from keyboard keys.
Collision detection is implemented to check if any
balls comes in contact with the player.
All complex code is outlined in the attached video.


Part E - 27/40 - 68%
-----------------------------

Part E1 - 7/10 - 70%
-----------------------------
Three user-defined classes with getters and setters:
Ball class - getters Line 52, setters Line 77.
Player class - getters Line 54, setters Line 71.
User class - getters Line 54, setters Line 67.

Default constructors included.

Part E2 - 10/15 - 67%
-----------------------------
Multiple methods in each of the three user-defined classes which accept parameters.
Ball class - Line 21, 27.
Player class - Line 17, 23.
User class - 16, 24 (returns a String value), 38.

Part E3 - 10/15 - 67%
-----------------------------
Aspects of the three user-defined classes used frequently in the game.

Examples:
Ball class used to populate an array with multiple ball objects using a for loop on Line 52.
Displaying and moving each Ball object in balls array using for loop on Line 68.
Resetting the xPos and yPos variables from the Player class to the centre of the display window on Lines 121 and 123.
Using the addTime method from the User class to store the user's time in the times array on Line 136.

Instances of Ball class being used - Line 18, 52, 57, 58, 69, 70, 88, 89, 102, 103, 104, 105, 106, 109, 127, 128, 141
Instances of Player class being used - Line 30, 74, 75, 102, 103, 104, 105, 121, 122
Instances of User class being used - Line 32, 37, 41, 136, 162, 163, 178


Part F - 35/40 - 88%
-----------------------------

Part F1 - 17/20 - 85%
-----------------------------
Multiple arrays used in program:
JOptionPane used to request the number of games the user would like to play at the beginning (Line 33)
and times array is User class has it's size defined by this input.
The balls array is populated with a for loop on Line 52.
A further 10 balls are added to the balls array after each game using a while loop on Line 140.

Part F2 - 20/20 - 100%
-----------------------------
On Line 27 of the User tab, a for loop is used to display the time from each array
and it is partly used to calculate the average time.
On Line 87 in the Game tab, a for loop is used to loop through the balls array
and sets the ball diameter to 0.0 if it's collision status is true.
Collision detection is carried out on Line 98 using a for loop to check each item in the balls array.

*/
