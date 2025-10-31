# GROUP 2 - COMP 360 - ON1 - ASSIGNMENT 2
Assignment 2 for COMP 360 from Group 2.

<br>

# GROUP 2 - COMP 360 - ON1 - GROUP EXPLANATION

# Project Initialization: 

---------------------------------------------------------

# Track Creation:
## Creation and Node Usage: Jasan
The basis of creating the track relied greatly upon the use of spline curves and creating a simulated
path from such curves and the use of the specific node like **Path3D**. By doing this and attaching a 3D 
element we were able to create a generated track, the background of such being supported by a **MeshInstance3D2**
for the addition of more depth and contrast to the track's slight texture - which was provided separately, using
a stock image. This texture could also be later replaced with a shader to utilize more of the class features explored.

---------------------------------------------------------
#Track Utilization: Jasan, Jason
The track is used in a way so that the player is guided down a set path, one that is not too long and not too short.
Along the track the transparent walls allow the player to look out onto the landscape whilst also performing the minigame
at hand. During the minigame the track is used as a progression tool, with the individual node segments of the track acting as
progress markers such as, 1 - 0%, 2 - 25%, 3 - 50%, 4 - 75%, 5 - 100%, and perfectly set up as to split it up in even segments.

---------------------------------------------------------
# Car-Camera Creation: Bhav, Manny
The camera is attached to the car in a sense where the player is following the vehicle through its journey around the track.
However, the input controls are linked moreso to the vehicle, so while it may give the player the illusion that the camera is 
the controls, its more so that the controls are the vehicle, and the vehicle is the camera. This allows for a smooth follow of the 
vehicle and gameplay for the player with the controls provided.

---------------------------------------------------------
# Car-Camera Utilization: Bhav, Manny
The camera is utilized in a fashion where we're introducing a wider shot, slightly top down focus on the vehicle but also
not too enclosed so that the camera can see the full vision of the terrain and environment built for the vehicle to traverse upon.
Most of this and the attached cameraparts can be seen under **VehicleBody3D** where the camera works alongside the vehicle closely.

---------------------------------------------------------
# Feature-1 Rain, Snow, and Fog: Zoe 
The rain and snow particle feature was made using **GPUParticles3D** and **GPUParticlesCollision3DBox**. I used 2 GPUParticles3D nodes that creates many small rain and snow particles that fall from the sky in certain parts of the track, while the Collision3DBox determines how the rain interact with the ground. To make the weather look more realistic, I also added some fog by adjusting the 'WorldEnvironment' node.

---------------------------------------------------------
# Features-2 Coin Collection: Zoe 
Created the coin with an **Area3D** node with a **MeshInstance3D**, and **CollisionShape3D**. The script attached to the Area3D node allows the coin to slowly spins around (rotates) every frame to make it look animated, and when the player touches the coin (the body enters the coin’s area), it: Adds 1 to the total number of coins stored in a global counter. Updates the coin counter label on the screen to show the new total. Disables collisions so it can’t be collected again and then Removes itself from the game (disappears).

---------------------------------------------------------
# Any Additional Content: Adam, Jasan, Kiki
We added variety to the track with areas that slightly shape up, slightly shape down, etc. We also went further and adding 
collision masking for an inner wall using **CollisionShape3D** which essentially forces the player to play more on the outskirts and middle
ground. This adds more difficulty as most of the coins are also placed on the outskirts and has the player have to use more of their wit and effort
to manuever around and obtain such items. We advanced upon the prior weather particles and advanced their space and presence on our track, by also lowering the track
this allowed for the weather to feel seamless with our 'snowy mountains' landscape previously created. The last bits and bobs of what we added included a race progress
split system which was tracked by our 'neutral' color block that would act as the start/stop to the said process.

---------------------------------------------------------
