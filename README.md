# Exercise 1: The Cat's Meow

Since we're working toward the goal of building apps for the web, we may as well start with the one thing that the web wouldn't exist without: cats!

In this exercise, we're going to create a Cat class so we can populate our software with a menagerie of feline friends.

Start a new project (create a new subfolder) and add a new file called "cat.rb". Run your program and commit your work after each step.

Create a class called Cat
Every cat should have three attributes when they're created: name, preferred_food and meal_time
Since we want these fields to be set for every Cat, you'll need to add an initialize method to your class
You can use irb to test out your class by loading your class into the console using the load method (i.e. load 'cat.rb') and then creating new instances of your class.
Create two instances of the Cat class in your file
They should each have unique names, preferred foods and meal times
Let's assume meal_time is an integer from 0 to 23
Add an instance method called eats_at that returns the hour of the day with AM or PM that this cat eats.
The return value should be something like "11 AM" or "3 PM"
Add another instance method called meow that returns a string of the cat telling you all about itself
The return value should be something like "My name is Sparkles and I eat tuna at 11 AM"
Call the meow method on each of the cats you instantiated in Step 3
Use puts to have the program output the result to the terminal
Once you're done, commit and push your work to GitHub!

# Exercise 2: Paperboy!

Back before the Internet existed, people used to have newspapers delivered to their homes. It was so popular that one of the earliest video games was based on making sure you delivered papers to every house in a suburban neighbourhood.

Let's see if we can make a class that represents a Paperboy and get them to deliver all of their papers on time!

Start a new project (create a new subfolder) and add a new file called "paperboy.rb". Run your program and commit your work after each step.

Each Paperboy should have several attributes:

Name
Experience (the number of papers they've delivered)
Side ("even" or "odd", representing the house numbers they deliver to)
Earnings (amount of money they've earned)
This needs to be read-only!
Every day, each Paperboy is given a house number to start at and a house number to finish at. They get paid $0.25 for every paper they deliver and $0.50 for every paper over their quota. If at the end of the day they haven't met their quota, they lose $2.

The minimum number of papers to deliver is 50. The quota is calculated as half of your experience added to the minimum.

Each Paperboy should have at least these methods:

quota
This method should return the paperboy's quota for his next delivery
deliver(start_address, end_address)
This method will take two house numbers and return the amount of money earned on this delivery as a floating point number. It should also update the paperboy's experience!
Let's assume that the start_address is always a smaller number than the end_address
As a stretch exercise you can figure out how to ensure it still works if the above assumption isn't met!
report
This method should return a string about the paperboy's performance
e.g. "I'm Tommy, I've delivered 90 papers and I've earned $38.25 so far!"

# Exercise 3: Mars Rover

This is a longer problem and recommended for group work. You can all work at your own computers, but talking through this problem as a group will help break it down and solve it. Don't forget to commit early and often!

The Story

A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover's position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

Imagine a grid that looks something like this:

  _ _ _ _ _ _ _ _ _
9|_|_|_|_|_|_|_|_|_|        N
8|_|_|_|_|_|_|_|_|_|      W   E
7|_|_|_|_|_|_|_|_|_|        S
6|_|_|_|_|_|_|_|_|_|
5|_|_|_|_|_|_|_|_|_|
4|_|_|_|_|_|_|_|_|_|
3|_|_|_|_|_|_|_|_|_|
2|_|_|_|_|_|_|_|_|_|
1|_|_|_|_|_|_|_|_|_|
0 1 2 3 4 5 6 7 8 9

In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'.

'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot.
'M' means move forward one grid point, and maintain the same heading.
Assume that the square directly North from (x, y) is (x, y+1).
