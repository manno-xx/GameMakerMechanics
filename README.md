# Small Game Maker examples

This project contains the following examples.

## _Chasing NPC
Using motion planning potential step (*mp_potential_step*) to let an npc chase the player. 

Light on the CPU but also not super smart. For not too complex environments, it could work.

Room: **rm_Chase**

## _Directions
Simple example on makeing a character play different animations and flipping a character based on left- right- input.

Room: rm_Directions

## _DragThings
Simple drag script. Pick something up and drop it. It stick to the mouse. THat's all.

Room: rm_Dragging

## _EToInteract
Walk up to something and press E to interact. Only of you press E when collision shapes (player and object to interact with) overlap.
A lever is switched once when pressing E.

Room: rm_Interact

## _EventBasedProgramming
Event based programming example in GameMaker. 

This has to do with the idea that objects in applications send out messages and other objects listen to those messages. This is set up in such a way that the objects are oblivious of each other's existence. That is considered good practice as it make it easier to reuse objects or scripts.

For instance: an HP bar updates based on health-status messages from the player. As does the 'game manager' to detect 'game over' when health reaches zero. It should be set up as such that if either or both of those are not there, there will be no errors either. Also referred to as *Loose coupling*. GameMaker has no built in features that allow for this, so it is maybe a bit 'cumbersome' to set up.

Room: **rm_EventBasedProgramming**

## _mappingNPCs

This example contains two ways of mapping off screen elements. As such hinting the player where to go or what to avoid.

The markers are just circles, but it could be modified to vary the markers based on what they represent.

The example shows to "mathematical variants" to do more or less the same. The one that is active gives maybe the best results, but is also a bit more complex.

Room: **rm_mappingEnemiesClamped**

## _PathFinding_AStar
Example on motion planning (path finding) using the grid option (A Star). 

A-star is generally considered a good pathfinding algorithm and the mp_grid_* functions implement this algorithm. You can read more on the algorithm at [Red Blob Games](https://www.redblobgames.com/pathfinding/a-star/introduction.html). Unity's NavMesh feature also uses A-star.

Room: **rm_aStarPath**

## _Potential_Path

Path finding using motion planning potential path (and maybe other mp_potential_* functions). This is not as smart as the mp_grid_* options, but it *is* more light weight.

Room: **rm_PotentialPath**

## _Shooting range

This is a bit of a grab bag. It contains a few simple things

Example of:

- Instantiating / creating object instances at run time (shooting bullets)
- Drawing a HUD (ammo left)
- Particles (dust puff when bullet hits wall)
- object turning towards the mouse

Room: **rm_ShootingRange**

## _StateMachine

The State Machine Design pattern makes code more managable. Especially if you find yourself doing a lot of checks like: 'if player is standing and if not already jumping and space pressed, jump!' For characters (player- or NPC) with a lot of different states, this can become hard to manage.
This is an example of implementing various NPC states using a state machine based on a plug-in called SnowState [https://github.com/sohomsahaun/SnowState](https://github.com/sohomsahaun/SnowState)

Room: rm_StateMachine

## Health bars

Still empty. I forgot about implementing this one until writing this. The shooting range example contains a somewhat similar feature with the ammunition indication and the state machine example has it too.
This example will eventually contain drawing a bar indicating the percentage of *something* (and that something could be health).

Room: **rm_HealthBars**
