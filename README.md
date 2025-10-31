# GROUP 2 - COMP 360 - ON1 - ASSIGNMENT 2
Assignment 2 for COMP 360 from Group 2.

<br>

# GROUP 2 - COMP 360 - ON1 - GROUP EXPLANATION

# Project Initialization: 

---------------------------------------------------------

# Track Creation:
## Creation and Node Usage:
The basis of creating the track relied greatly upon the use of spline curves and creating a simulated
path from such curves and the use of the specific node like 'Path3D'. By doing this and attaching a 3D 
element we were able to create a generated track, the background of such being supported by a 'MeshInstance3D2'
for the addition of more depth and contrast to the track's slight texture - which was provided separately, using
a stock image. This texture could also be later replaced with a shader to utilize more of the class features explored.

---------------------------------------------------------
# Track Utilization:
The track is used in a way so that the player is guided down a set path, one that is not too long and not too short.
Along the track the transparent walls allow the player to look out onto the landscape whilst also performing the minigame
at hand. During the minigame the track is used as a progression tool, with the individual node segments of the track acting as
progress markers such as, 1 - 0%, 2 - 25%, 3 - 50%, 4 - 75%, 5 - 100%, and perfectly set up as to split it up in even segments.

---------------------------------------------------------
# Car-Camera Creation:

---------------------------------------------------------
# Car-Camera Utilization:

---------------------------------------------------------
# Camera Adjustment:

---------------------------------------------------------
# Feature-1 Rain, Snow, and Fog: Zoe Antonio
The rain and snow particle feature was made using **GPUParticles3D** and **GPUParticlesCollision3DBox**. I used 2 GPUParticles3D nodes that creates many small rain and snow particles that fall from the sky in certain parts of the track, while the Collision3DBox determines how the rain interact with the ground. To make the weather look more realistic, I also added some fog by adjusting the 'WorldEnvironment' node.

---------------------------------------------------------
# Features-2 Coin Collection: Zoe Antonio
Created the coin with an **Area3D** node with a 'MeshInstance3D', and 'CollisionShape3D'. The script attached to the Area3D node allows the coin to slowly spins around (rotates) every frame to make it look animated, and when the player touches the coin (the body enters the coin’s area), it: Adds 1 to the total number of coins stored in a global counter. Updates the coin counter label on the screen to show the new total. Disables collisions so it can’t be collected again and then Removes itself from the game (disappears).

---------------------------------------------------------
# Any Additional Content:

---------------------------------------------------------
