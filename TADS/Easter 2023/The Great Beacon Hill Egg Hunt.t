#charset "us-ascii"

/*
 *   Copyright (c) 1999, 2002 by Michael J. Roberts.  Permission is
 *   granted to anyone to copy and use this file for any purpose.  
 *   
 *   This is a starter TADS 3 source file.  This is a complete TADS game
 *   that you can compile and run.
 *   
 *   To compile this game in TADS Workbench, open the "Build" menu and
 *   select "Compile for Debugging."  To run the game, after compiling it,
 *   open the "Debug" menu and select "Go."
 *   
 *   This is the "advanced" starter game - it has only the minimum set of
 *   definitions needed for a working game.  If you would like some more
 *   examples, create a new game, and choose the "introductory" version
 *   when asked for the type of starter game to create.  
 */

/* 
 *   Include the main header for the standard TADS 3 adventure library.
 *   Note that this does NOT include the entire source code for the
 *   library; this merely includes some definitions for our use here.  The
 *   main library must be "linked" into the finished program by including
 *   the file "adv3.tl" in the list of modules specified when compiling.
 *   In TADS Workbench, simply include adv3.tl in the "Source Files"
 *   section of the project.
 *   
 *   Also include the US English definitions, since this game is written
 *   in English.  
 */
#include <adv3.h>
#include <en_us.h>

/*
 *   Our game credits and version information.  This object isn't required
 *   by the system, but our GameInfo initialization above needs this for
 *   some of its information.
 *   
 *   You'll have to customize some of the text below, as marked: the name
 *   of your game, your byline, and so on.
 */
versionInfo: GameID
    IFID = 'b22398fa-b617-4ef7-9b95-77904993285d'
    name = 'Great Beacon Hill Egg Hunt'
    byline = 'by Ted Hudek'
    htmlByline = 'by <a href="mailto:tedhudek@outlook.com">
                  Ted Hudek</a>'
    version = '1'
    authorEmail = 'Ted Hudek <tedhudek@outlook.com>'
    desc = 'An Easter 2023 game'
    htmlDesc = 'An Easter 2023 game'
;

/*
 *   The "gameMain" object lets us set the initial player character and
 *   control the game's startup procedure.  Every game must define this
 *   object.  For convenience, we inherit from the library's GameMainDef
 *   class, which defines suitable defaults for most of this object's
 *   required methods and properties.  
 */
gameMain: GameMainDef
    /* the initial player character is 'me' */
    initialPlayerChar = me
;

/* 
 *   Starting location - we'll use this as the player character's initial
 *   location.  The name of the starting location isn't important to the
 *   library, but note that it has to match up with the initial location
 *   for the player character, defined in the "me" object below.
 *   
 *   Our definition defines two strings.  The first string, which must be
 *   in single quotes, is the "name" of the room; the name is displayed on
 *   the status line and each time the player enters the room.  The second
 *   string, which must be in double quotes, is the "description" of the
 *   room, which is a full description of the room.  This is displayed when
 *   the player types "look around," when the player first enters the room,
 *   and any time the player enters the room when playing in VERBOSE mode.
 *   
 *   The name "startRoom" isn't special - you can change this any other
 *   name you'd prefer.  The player character's starting location is simply
 *   the location where the "me" actor is initially located.  
 */
startRoom: Room 'Start Room'
    "This is the starting room. "
;

/*
 *   Define the player character.  The name of this object is not
 *   important, but it MUST match the name we use to initialize
 *   gameMain.initialPlayerChar above.
 *   
 *   Note that we aren't required to define any vocabulary or description
 *   for this object, because the class Actor, defined in the library,
 *   automatically provides the appropriate definitions for an Actor when
 *   the Actor is serving as the player character.  Note also that we don't
 *   have to do anything special in this object definition to make the
 *   Actor the player character; any Actor can serve as the player
 *   character, and we'll establish this one as the PC in main(), below.  
 */
+ me: Actor
;

// Define a class for rooms that are outdoors class Outdoors: Room outdoors = true ;

// Define the rooms Bedroom: Room ‘Bedroom’ "The master bedroom is tastefully furnished and has a vaulted ceiling. You can exit by going down. " down = livingRoom ;

LivingRoom: Room ‘Living Room’ "There are big windows here and a comfy looking recliner. You can go up, northwest, north, or west into the garage. " up = bedroom northwest = bathroom north = kitchen west = garage ;

Kitchen: Room ‘Kitchen’ "Granite countertops adorn this small kitchen. You can see the back yard outside a door to the east and a dining room to the west. " east = backyard west = diningRoom ;

Bathroom: Room ‘Bathroom’ "This is a small but functional bathroom. " ;

DiningRoom: Room ‘Dining Room’ "This is a cozy dining room with a wooden table and chairs. " east = kitchen west = frontRoom ;

FrontRoom: Room ‘Front Room’ "This is a spacious front room with a fireplace and a sofa. " east = diningRoom ;

// Define the objects

bed: Surface ‘bed’ ‘bed’ "It’s a large and comfortable bed. " ;
++ pillow: Thing ‘pillow’ ‘pillow’ "It’s a fluffy pillow. " ;

backpack: Container ‘blue backpack’ ‘backpack’ "It’s a blue backpack with some pockets and straps. " ;
++ egg: Container ‘red Easter egg’ ‘egg’ "It’s a red plastic egg with something inside. " ;

+++ message: Thing ‘message’ ‘message’ "It’s a piece of paper with some writing on it. " ;

footrest: Container ‘footrest’ ‘footrest’ "It’s a small wooden footrest that opens up to reveal some storage space. " ;
++ egg2: Thing ‘green Easter egg’ ‘egg’ "It’s a green plastic egg with something inside. " ;

// Define the actions

modify Thing dobjFor(Take) action() { // if we’re taking an egg, increase the score by 10 if (gEggList.indexOf(self) != nil) scorePoints(10);

        // inherit the default behavior
        inherited;
    }
;

modify message dobjFor(Examine) action() { // say the message instead of describing it say(‘The message says 'Find us in the real world.'’); } ;

// Define a list of eggs for scoring purposes

gEggList: objectList = [egg, egg2];
