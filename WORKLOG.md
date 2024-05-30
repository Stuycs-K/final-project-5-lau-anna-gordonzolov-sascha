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

