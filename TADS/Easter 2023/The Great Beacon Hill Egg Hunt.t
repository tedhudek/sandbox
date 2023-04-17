#charset "us-ascii"

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


gameMain: GameMainDef
    /* the initial player character is 'me' */
    initialPlayerChar = me
;


+ me: Actor
 location = livingroom
;


// Define the rooms Bedroom: Room 'Bedroom' "The master bedroom is tastefully furnished and has a vaulted ceiling. You can exit by going down. " down = livingRoom ;

livingroom: Room 'Living Room'
    "There are big windows here and a comfy looking recliner. You can go up, northwest, north, or west into the garage. "
    
    up = bedroom
    northwest = bathroom
    north = kitchen
    west = garage
;

kitchen: Room 'Kitchen'
    "Granite countertops adorn this small kitchen. You can see the back yard outside a door to the east and a dining room to the west. Some kind of hazy portal is to the south."
    east = backyard
    west = diningroom
    south = Desert
;

bathroom: Room 'Bathroom' "This is a small but functional bathroom. " ;

diningroom: Room 'Dining Room' "This is a cozy dining room with a wooden table and chairs. " east = kitchen west = frontroom ;

frontroom: Room 'Front Room' "This is a spacious front room with a fireplace and a sofa. " east = diningroom ;

// Define the objects

bed: Surface 'bed' 'bed' "It's a large and comfortable bed. " ;
++ pillow: Thing 'pillow' 'pillow' "It's a fluffy pillow. " ;

backpack: Container 'blue backpack' 'backpack' "It's a blue backpack with some pockets and straps. " ;
++ egg: Container 'red Easter egg' 'egg' "It's a red plastic egg with something inside. " ;

+++ message: Thing 'message' 'message' "It's a piece of paper with some writing on it. " ;

footrest: Container 'footrest' 'footrest' "It's a small wooden footrest that opens up to reveal some storage space. " ;
++ egg2: Thing 'green Easter egg' 'egg' "It's a green plastic egg with something inside. " ;


Desert: Room 'Desert' "You are in a vast and arid desert. The sun beats down mercilessly. " ;

+ Mike: Person 'Mike/mike' 'Mike'
    "Mike is a friendly-looking fellow with a cowboy hat and a cactus tattoo on his arm. "
    theName = 'Mike'
    isHim = true
    askTopics = [ 'cactus' ]
    iobjFor(AskAbout) asDobj // This line tells TADS to use the same method for Mike as the indirect object of AskAbout as it would for Mike as the direct object of AskAbout.
;

+ cactus: Thing 'cactus' 'cactus'
    "It's a spiky green plant that somehow survives in this harsh environment. "
;

modify Thing
    dobjFor(AskAbout)
    {
        action()
        {
            if (gActor == me && gDobj == cactus && gIobj == Mike)
            {
                "Mike says it is really tall. ";
            }
            else
            {
                inherited;
            }
        }
    }
;