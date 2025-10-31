# GROUP 2 - COMP 360 - ON1 - ASSIGNMENT 2
Assignment 2 for COMP 360 from Group 2.

<br>

# GROUP 2 - COMP 360 - ON1 - GROUP EXPLANATION

# Project Initialization: 

---------------------------------------------------------

# Track Creation:
## Creation and Node Usage: Jasan, Kiki
The basis of creating the track relied greatly upon the use of spline curves and creating a simulated
path from such curves and the use of the specific node like **Path3D**. By doing this and attaching a 3D 
element we were able to create a generated track. We applied a texture to the track to ensure that it would have
visible distinction with the rest of the features we will be adding. However, the color of said track fits in nicely
still with the rest of the environment that we are/were planning to set up.

---------------------------------------------------------
## Track Utilization: Jasan, Jason
The track was first setup in a linear fashion. This was later adjusted as we realized it did not add much to the gameplay element of
the systems we were creating. So it was later changed. We changed the track to run more in a loop and adjusted the collision mask accordingly
around that instead of the method we were previously using we required **Path3D** and multiple instances of it. By doing this, it also lets the player
experience 'fails' by falling off, to add some grace to this, we added 'inner walls' as a bit of a safety net. Now the track is fully able to be utilized for
both racing needs, coin collection, and to showcase any other features as well. To ensure this we also expanded the snow particle limit to cover the new track 
nearly fully.

---------------------------------------------------------
# Car-Camera Creation: 
## Creation and Usage: Kiki, Bhav, Manny
The camera is attached to the car in a sense where the player is following the vehicle through its journey around the track.
However, the input controls are linked moreso to the vehicle, so while it may give the player the illusion that the camera is 
the controls, its more so that the controls are the vehicle, and the vehicle is the camera. This allows for a smooth follow of the 
vehicle and gameplay for the player with the controls provided.

---------------------------------------------------------
## Car-Camera Utilization: Kiki, Bhav, Manny
The camera is utilized in a fashion where we're introducing a wider shot, slightly top down focus on the vehicle but also
not too enclosed so that the camera can see the full vision of the terrain and environment built for the vehicle to traverse upon.
Most of this and the attached cameraparts can be seen under **VehicleBody3D** where the camera works alongside the vehicle closely.

---------------------------------------------------------
# Features Creation:
## Features Added (1): Rain, Snow, and Fog: Zoe
The rain and snow particle feature was made using **GPUParticles3D** and **GPUParticlesCollision3DBox**. I used 2 GPUParticles3D nodes that creates many small rain and snow particles that fall from the sky in certain parts of the track, while the Collision3DBox determines how the rain interact with the ground. To make the weather look more realistic, I also added some fog by adjusting the 'WorldEnvironment' node.

---------------------------------------------------------
## Features Added (2): Coin Collection: Zoe, Kiki
Created the coin with an **Area3D** node with a **MeshInstance3D**, and **CollisionShape3D**. The script attached to the Area3D node allows the coin to slowly spins around (rotates) every frame to make it look animated, and when the player touches the coin (the body enters the coin’s area), it: Adds 1 to the total number of coins stored in a global counter. Updates the coin counter label on the screen to show the new total. Disables collisions so it can’t be collected again and then Removes itself from the game (disappears).

---------------------------------------------------------
# Any Additional Content: 
## Content Added (Bulk): Kiki, Adam, Jasan
We added variety to the track with areas that slightly shape up, slightly shape down, etc. We also went further and adding 
collision masking for an inner wall using **CollisionShape3D** which essentially forces the player to play more on the outskirts and middle
ground. This adds more difficulty as most of the coins are also placed on the outskirts and has the player have to use more of their wit and effort
to manuever around and obtain such items. We advanced upon the prior weather particles and advanced their space and presence on our track, by also lowering the track
this allowed for the weather to feel seamless with our 'snowy mountains' landscape previously created. The last bits and bobs of what we added included a race progress
split system which was tracked by our 'neutral' color block that would act as the start/stop to the said process.

---------------------------------------------------------
