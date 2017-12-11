
#CA ASSIGNMENT - **OOP SEM 1**
##(Based on the 1980's Star Wars game)
-----

###Instructions
It's way too simple to use it. As you compile and run the 'game', all you have to do is aim on the circular celestial objects and click on them to destroy it. The radar blinks a spot once its destroyed. Moreover, there's a *points counter* on the number of objects you've destroyed: everytime you click on a celestial you *gain* a point, but when you haven't aimed well, you lose one. The **_high score counter_** basically shows what the highest you've scored(obviously).
___

###Synopsis - how it's made
[Link to the video to my assignment.](http://youtu.be/wJ1a1Y1E2lg?hd=1)
//Sorry for no audio: my recorder was acting weird

For the entire project, I required 6 objects: 
1. The *Dashboard*, for framing the dashboard;
2. *Pointer*, for pointing towards the target to shoot it down;
3. *Celestials*, for the celestial objects to be created and destroyed;
4. *radar*,for the Radar (bottom right)
5. *__burst__*, for the spot that blinks on the radar to be shown; and
6. *compass*, to obviously create one and do what it generally does.

* The Dashboard is created using a rect on top, for the *Compass* to fit in and the bottom for the *radar* and the scores to be in it.
* The pointer is created using 4 lines all starting from the four edges of the dashboard to where the mouse points; a rectangle and 2 other lines to mark an 'X' (cause x is cool)
* The Celestials are created in  random manner: when always generated it's diameter would be random between 30 and 50,
 and is also given a random x and y value with a range in between the dashboard frame. It's then let to increase its 'speed' , and then  'dies' when it goes out of bounds(the object is removed from the arraylist when out of bounds).
* The compass is the one up there that shows the directions: the north is far towards the left, and as the mouse is moved towards the right, the compass practically goes in clockwise direction. This is done by creating a rectangle twice as long as the width of the screen and precisely centered at the beginning. It's then divided into 16 parts so the direction lines can be drawn equally, and every 4th line being a big one to mark the direction. It's also adjusted in such a way the rectangle moves once the mouseX changes.
* The Radar is created using an ellipse, with a line in it which moves around inside the circle. It involves a trailLength which aids in creating a section of lines that would trail the preceeding ones, and moves around accordingly.
* the 'burst' pointer is created based on where the celestial is popped. It's mapped based on the screen and that basically means it shows based on the direction.
Hope you've enjoyed the game!