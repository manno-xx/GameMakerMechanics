# Small Game Maker examples

This project contains the following examples.

## _PathFinding_AStar
Example on motion planning (path finding) using the grid option (A Star). 

A-star is generally considered a good pathfinding algorithm and the mp_grid_* functions implement this algorithm. You can read more on the algorithm at [Red Blob Games](https://www.redblobgames.com/pathfinding/a-star/introduction.html). Unity's NavMesh feature also uses A-star.

Room: **rm_aStarPath**

## _Potential_Path

Path finding using motion planning potential path (and maybe other mp_potential_* functions). This is not as smart as the mp_grid_* options, but it *is* more light weight.

Room: **rm_PotentialPath**

## _Chasing NPC
Using motion planning potential step (*mp_potential_step*) to let an npc chase the player. 

Light on the CPU but also not super smart. For not too complex environments, it could work.

Room: **rm_Chase**

## _EventBasedProgramming
Event based programming example in GameMaker. 

This has to do with the idea that objects in applications send out messages and other objects listen to those messages. This is set up in such a way that the objects are oblivious of each other's existence. That is considered good practice as it make it easier to reuse objects or scripts.

For instance: an HP bar updates based on health-status messages from the player. As does the 'game manager' to detect 'game over' when health reaches zero. It should be set up as such that if either or both of those are not there, there will be no errors either. Also referred to as *Loose coupling*. GameMaker has no built in features that allow for this, so it is maybe a bit 'cumbersome' to set up.

Room: **rm_EventBasedProgramming**

## Health bars

Still empty. I forgot about implementing this one until writing this. The shooting range example contains a somewhat similar feature with the ammunition indication and the state machine example has it too.
This example will eventually contain drawing a bar indicating the percentage of *something* (and that something could be health).

Room: **rm_HealthBars**

## _Shooting range

This is a bit of a grab bag. It contains a few simple things

Example of:

- Instantiating / creating object instances at run time (shooting bullets)
- Drawing a HUD (ammo left)
- Particles (dust puff when bullet hits wall)
- object turning towards the mouse

Room: **rm_ShootingRange**

## _mappingNPCs

This example contains two ways of mapping off screen elements. As such hinting the player where to go or what to avoid.

The markers are just circles, but it could be modified to vary the markers based on what they represent.

The example shows to "mathematical variants" to do more or less the same. The one that is active gives maybe the best results, but is also a bit more complex.

Room: **rm_mappingEnemiesClamped**
