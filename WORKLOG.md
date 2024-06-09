# Work Log

## Sascha Gordon-Zolov

### 5/22

Created Skeleton, worked on writing abstract classes and subclasses. 

### 5/23

Having some trouble committing, but displayed the map with coordinates (826, 532).

### 5/24

Created getStart() and getEnd(), explicitly found which block was the start block. Switched variable types to make different parts of the code align better. 

### 5/24

Made a visible path for the bloons to stay on, toggleable (maybe?) with the new display() method in map. Also made the path an ordered linked list, such that the start is the head and the end is the tail. 

### date 5/25

Made skeletons of potential useful methods: getCurr() and getNext(). Also set all the elements of path to true for being onpath. Not entirely sure how to access path from bloon, still thinking about solutions. 

### date 5/27

Created a new class called "rounds". The idea is that each wave will be contained in a "Round" -- I'm oping that this may fix the problem of Round being able to access the path as the rounds will have a path (maybe?). 

### date 5/28

Created a working leveldown for bloons, created monkeys that have a radius that can be displayed with an opacity that makes sense somewhat. 

### date 5/29

Got path to work for the most part!! Figured out how to use the move class more efficiently, we now are containing blocks within bloons. Most of today was pair programming. 
Monkeys now show the radius of attack when highlighted!! You can also click anywhere on the screen to get rid of the radius, but you must click on the monkey for it to show. Added necessary classes to overarching monkey class as well. 

### date 5/30
Mostly pair programming, working on dart class.

Got the darts working!!!! Took me a while -- I'm tired. Essentially how it works is that each monkey has a single bloon that they attack at a time. Once the bloon is hit, the monkey is able to retarget another bloon and attack is able to be called again until another bloon is located. Also made it so that when bloons are popped to nothing, they no longer "exist" and are moved 1000 pixels from the screen.

### date 5/31
Got a demo branch to work for stuff at home using switch. Fixed radius stuff through pair programming. 

### date 6/1
I'm calling it 6/1 even if it's now 3 in the morning. I got rounds to work!! They're pretty cool -- it actually uses the rounds class. You can currently skip rounds with enter and play normally by passing rounds with space. I also made a bunch of additional qol changes that were missing. Spent a long time getting the timing to work for the bloons -- it's sorta complicated! My solution wasn't great - I ended up doing some work with the numbers and then truncated the timer so that rounding errors wouldn't mess with any results. There are currently 3 working rounds (the first three).  

### date 6/2
Fixed next round! Now when playing normally (pressing space to traverse rounds) all the bloons must stop existing before the next round can start. 
Made it so that victory plays when the last round ends, loss plays when lives hits 0.

### date 6/3
Too much pain to work :(

### date 6/4
Reduced lag with displaying money and lives through making the font globally assigned once. Fixed problems with radius by creating a function that allows you to reassign coordinates to a monkey (might not exist in tack but works for dart). 

### date 6/5
Found website sprite sheet:https://www.spriters-resource.com/pc_computer/bloonstowerdefense6/ 
Too sick to work :(

### date 6/6
Made the path start earlier so that it actually looks like the bloons come from somewhere instead of instantly spawning! (I think? Maybe it's a placebo??) You can now no longer place monkeys on path blocks, and added sketches of functions for the map to look different (red/grey) when a monkey can or can not be placed. 

### date 6/7
Trying to rewrite the rounds class but its ending up looking like a bigger job then I was anticipating -- should work out soon though!

### date 6/8
Productive day! I made 20 full rounds mimicking the rounds of the real game -- the system implemented yesterday helped significantly. Now when monkeys are selected to place you can tell by a red or grey radius whether or not the monkey can be placed. Started making a super and sniper monkey! Super is done, sniper is close. 

## Anna Lau

### date 5/22

Finished the skeletons for the rest of the classes and wrote constructor for Monkeys

### date 5/23

Coded constructor for DartMonkeys and added the image to display. Coded the move method for Monkeys to be inherited by each of the subclasses.
Found the images for each Ballon and started their constructors. Started coding the grid and the array for the path.

### date 5/24
Created an list of Blocks for the path and started a list of turning points to be implemented in the move function for Block.

### date 5/26
Added a method to access the map through the coonstructor. Have to think more about how to implement move. Resized the images for the Bloons.

### date 5/28
Coded the move for Bloons to go through the path and reconfigured the BTD file. Need to animate the movement.
Started the animation of the movement but have to modify the move method to accomodate the turns in the path.

### date 5/29
Got a bit of the path to work. Added a lot more accessor methods to access things across classes.
Finished the path and tested it extensively. Can start adding rounds and shooters tomorrow.

### date 5/30
Started moving the darts, have to get them moving in the right trajectory.

### date 5/31
Made it so that the monkeys could only shoot in the range. Also created a demo branch.

### date 6/1
Displayed the money and lives on the map. Made the money increase for every popped bloon.
Finished tackshooter and tested it.

### date 6/2
Fixed the laggy display and implemented subtraction of lives. Also added preliminary win and defeat screens.

### date 6/3
Started setting up the sidebar.

### date 6/4
Got the drag and drop for the towers working. Configured the money and made it so that users could only buy towers that they can afford.

### date 6/5
Changed the dart for tackshooter.

### date 6/6
Changed the Bloon constructor and the level down method to accomodate more Bloon levels later on.

### date 6/7
Added new Bloon types and added a popping sound effect.
