"A Magical Birthday" by The Birthday Monsters

[Mailtoad, Zaphod (beebleblox), Belboz, Boneywasawarriorwayayix in Corsica, Rosalina to pilot Comet Observatory, convince Marvin to fix the door (as Rosalina) (which is broken ("Sorry about the door...")) in order to enter the party at the end
To-do: Finish above + invisiclues (LingoJam)
make card!! ("feelies")
add Marvin/door problems if time?
new scoring system cheatsheet: 
mailtoad (get mail bag) = 6
zaphod (get blox + bag, then wrap them) = 2, 2, 2
belboz (move tapestry, get pack) = 3, 3
boneywasawarriorwayayix (get basket, eat cheese) = 3, 3
rosalina (push all buttons, pilot Comet Observatory to Lobby and arrive) = 6, 6
get gift bag & open it (get it, examine it, open envelope, examine card) = 3, 1, 1, 1
Current total = 42/42]

The story headline is "An Egg-stravagant Fiction".

Use scoring. The maximum score is 42.

Instead of taking something undescribed:
      say "Take the what now? I don't see that..."
      
Asking who am I is an action applying to nothing.

Understand "who am I" as asking who am I.

Carry out asking who am I: [Usually that means the player is Dtd but also just in case I slip up and forget to define one]
      say "You're you!"

Instead of asking who am I in the Comet Observatory:
      say "You are the mail toad."
      
Instead of asking who am I in the Heart of Gold:
      say "You are Zaphod Beeblebrox. Or should I say... Phil?"
      
Instead of asking who am I in Belboz's Quarters:
      say "You're Belboz!";
      
Instead of asking who am I in Corsica:
      say "Well, Wellingtonwasa-- oh sorry, Boneywasawarriorwayayix.";
      
Instead of asking who am I in the Engine Room:
      say "Who else do you think can pilot the Comet Observatory!? You're the one, the only... Rosalina!";
      
 Instead of asking who am I in the Engine Room Flying Through Space:
      say "Who else do you think can pilot the Comet Observatory!? You're the one, the only... Rosalina!";
      
Instead of asking who am I in the Lobby:
      say "You're (still) the one, the only... Rosalina!";

Instead of asking who am I in the Party Room:
      say "You're the birthday person, Daddy D. Daddy!".
      

Section 1 -  Bedroom

The Bedroom is a room. The Bedroom has description "The master bedroom is tastefully furnished and has a vaulted ceiling. There is an exit to port."
The bed is a supporter in the Bedroom. The note is on the bed. 
Instead of examining the note:
      say "The note says: HAPPY BIRTHDAY! Love, The Birthday Monsters. P.S. Sorry about the door...";
      
Section 2 - Headquarters

The Headquarters is a room. The Headquarters has description "(I was lying about the exit to port.) The secret HQ of The Birthday Monsters! You can go up, north, east, south, and west. You can see lots of posters on the wall with pictures of all of the TBM squad.". The Headquarters is south of the Bedroom.
The Party Success Pack is in the Headquarters. It has description "That's TBM's patented Party Success Pack! It guarantees sucess for any party you throw. Instead of having to buy balloons, cake, decorations, and the like, you simply open up the Party Success Pack just before your party, and it'll cover all that for you! It does, however, say in the fine print that due to it being as generic as it is, it can't cover things such as gifts, cards, and other food items.".
Belboz_pack is a truth state that varies. Belboz_pack is false. [Belboz_pack = the Party Success Pack is in Belboz's Quarters]

Instead of taking the Party Success Pack in the Headquarters:
      say "Before you can grab it, the Party Success Pack disappears in a puff of... well... the only way to really describe what just happened would be to say 'magic'. First it was there, and now for some inexplicable reason, it isn't!";
      now the Party Success Pack is in Belboz's Quarters;
      now the Party Success Pack is undescribed;
      now Belboz_pack is true;
      
Section 3 - Comet Observatory

[Play as: Mailtoad. Obejctive: Obtain the mail bag.]

The Comet Observatory is up from the Headquarters.
The Comet Observatory is a room. The Comet Observatory has description "This is a starship that travels the galaxy which just, for you, this morning, is cosmic, starry, BRIIIIIIGHT (thanks Bing AI). You can go down or up.".
The mail bag is a container in the Comet Observatory. It is closed and openable. The mail bag has description "Mailtoad's mail bag!". The mail bag contains the envelope. The envelope is a container. It is closed and openable. The envelope has description "It says, in festive-looking letters, 'Daddy D. Daddy'.".

After taking the mail bag for the first time:
      increase the score by 3;
      
After opening the mail bag for the first time:
      increase the score by 3;

Instead of opening the envelope when the player is not in the Party Room:
      say "Isn't that, like, a federal crime or something? In other words, no, you may not open the envelope. It isn't yours.";
      

Section 4 - HoG

[Play as: Zaphod. Objective: Obtain the package of beebleblox and the gift bag and wrap Daddy's gift.]

The Heart of Gold is a room. The Heart of Gold is south of the Headquarters. The Heart of Gold has description "This looks like that incredible new spaceship, the Heart of Gold!".
The box is a container in the Heart of Gold. It is closed and openable. There is a package of beebleblox in the box. The package of beebleblox has description "The package of beebleblox has a flashy and colorful exterior that promises much fun to be had with them. It also says the name of the legendary creator, Zaphod Beeblebrox. Well, it would if this one didn't have an odd typo on it, causing it to say that the creator is Phil (instead of Zaphod).".
Wrapped is a truth state that varies. Wrapped is false. [so you can only get points for wrapping the beebleblox the first time]
The gift bag is a container in the Heart of Gold.
After taking the gift bag for the first time:
      increase the score by 2;
After taking the package of beebleblox for the first time:
      increase the score by 2;

Before inserting something into:
      if the noun is in the second noun:
            say "Already done." instead;
            stop the action;
      if the player is not holding the noun:
            say "You're not holding that!";
            stop the action;
      if the second noun is not a container:
            say "You can't put things in [the second noun].";
            stop the action;
      if the noun is the package of beebleblox and the second noun is the gift bag:
            say "You have successfully wrapped the package of beebleblox.";
            if Wrapped is false: [aka they haven't been in this loop before]
                  increase the score by 2;
            move the noun to the second noun;
            now Wrapped is true;
            rule succeeds;
      else:
            continue the action;
            
Understand "put [things] in [something]" as inserting it into.

Section 5 - Belboz's Quarters

[Play as: Belboz. Objective: Obtain Party Success Pack from behind the tapestry.]

Belboz's Quarters is a room. It has description "The personal chamber of Belboz, who formerly presided over the Circle of Enchanters (apparently you're talking about yourself in the third person now?), is appointed with a beautiful woven wall hanging, an exotic morgia plant, and a wide darkwood desk crafted by the artisans of Gurth. The Headquarters lies to the east.". Belboz's Quarters is west of the Headquarters.
The plant is scenery in Belboz's Quarters. "An exotic morgia plant whose leaves appear to be somewhat wilted at this point, probably from all those inexperienced Enchanters messing around with the meef spell...".
The tapestry is in Belboz's Quarters. It has description "It is a beautiful piece of local handiwork, given to you by the grateful townspeople after your (admittedly showy) pyrotechnical destruction of the evil giant Amathradonis. The hanging is affixed to the wall at its upper corners.".
The desk is a supporter in Belboz's Quarters. The desk has description "You notice a few items you must have put there sometime last week.". The infotater is on the desk. The infotater is undescribed. Printed name is "no infotater". The infotater has description "Hate to break it to you, but this is the wrong game for that. It isn't there!". The post-it note is on the desk. The post-it note is undescribed. The post-it note has description "It seems to be a note that you wrote yourself several years ago, simply saying 'The tapestry sure does seem to be a good hiding place.' It also as if you started writing a to-do list on the back of it earlier this week, the only item on which is 'Investigate PSP'.". The set of speakers is on the desk. The set of speakers is undescribed. It has description "Just looks like a regular old set of speakers. But why not try listening to them?".

Understand the command "move" as something new.
Moving is an action applying to one thing. Understand "move [something]" as moving.
MT is a truth state that varies. MT is false. [MT = moved tapestry]

Check moving:
      if the noun is not the tapestry:
            say "That won't get you anywhere." instead;
      otherwise if MT is true:
            say "You already did that." instead;
      otherwise if Belboz_pack is false:
            say "You take a peek behind it, but there doesn't seem to be anything there at the moment." instead;
            
Carry out moving:
      increase the score by 3;
      now MT is true;
      now the Party Success Pack is described;

Report moving:
      say "Something falls out from behind it onto the floor.";


After examining the desk:
      now the infotater is described;
      now the post-it note is described;
      now the set of speakers is described;
      
Instead of listening to the speakers:
      say "You hear a song playing on the radio, the lyrics of which are 'Hang on Belboz, Belboz hang on!'";
      
Instead of taking the tapestry:
      say "It looks too well fastened to remove from the wall.";
      
After taking the Party Success Pack for the second time: [the "second" time will always be the first time it actually succeeds]
      increase the score by 3;
      
Understand "no infotater" as infotater.

Instead of taking the infotater:
      say "Your common sense tells you you can't do that. And before you try to enter your own brain through improbability involving a microscoping space fleet, a dog, and a cheese sandwich, remember that this isn't The Hitchhiker's Guide to the Galaxy.".
      
Section 6 - Corsica

[Play as: Boneywasawarriorwayayix. Obective: Obtain the Banquet-in-a-basket™ + discover and eat the cheese.]

Corsica is a room. Corsica is east of the Headquarters. Corsica has description "You're in Corsica. The sand! Take a sniff at this sand!".
The sand is scenery in Corsica. The description is "Yay, the sand of Corsica once more!". 
Instead of smelling the sand:
      say "That was... a quote from the book... but thanks for following directions.";
      
The basket is in Corsica. It is a container. It is closed and openable. It has description "It's a basket which has a label on the outside which says 'Banquet-in-a-basket™, courtesy of Asterix, Obelix, and the rest of the Village'.".
The Corsican cheese is in Corsica. It is undescribed. It is edible. It has description "It looks like every other piece of Corsican cheese you've ever seen!".

After taking the basket:
      increase the score by 3;
      
Instead of opening the basket:
      say "You'll want to keep everything inside fresh for the party. But... you are a little hungry... and you notice something new on the beach!";
      now the Corsican cheese is described;
      
Instead of smelling the basket:
      say "It smells like an entire banquet is in there! Oh wait... that's exactly what it is!";
      
Instead of smelling the Corsican cheese in Corsica:
      say "Such a delicate, subtle aroma, calling to mind thyme and almond trees, fig trees, chestnut trees, and then again, the faintest hint of pines, a touch of tarragon, a suggestion of rosemary and lavender... ah, my friends, that aroma... IS THE ESSENCE OF CORSICA!!!";
      
After eating the Corsican cheese in Corsica:
      say "Well, there's one thing you didn't have time to do in the book! Yum, yum!";
      increase the score by 3;
      
Instead of eating the Corsican cheese when the player is not in Corsica:
      say "I... don't think you want to do that, not being a Corsican...";
      
Instead of smelling the Corsican cheese when the player is not in Corsica:
      say "Wow... umm... it has a very... 'interesting' smell.";
      
      

Section 7 - Engine Room

[Play as: Rosalina. Objective: Pilot the Comet Observatory to the Party. Prerequisites: Be ready for the Party. Point requirement to ensure you've successfully completed sections as Mailtoad, Zaphod, Belboz, and Boneywasawarriorwayayix is 24 points total.]

The Engine Room is a room. The Engine Room is up from the Comet Observatory. The Engine Room has description "This is where one can pilot the Comet Observatory, assuming one is Rosalina. (I suppose technically the title should be 'Outside the Engine Room' or something, but then again, I'm not Ralph, am I? (Don't answer that. I see you thinking about it.))".
Instead of going to the Engine Room when the score is less than 24:
      say "You feel as if you're not ready for that yet. Come back when you have 24 points, and I'll rethink it.";
      
A button is a kind of thing. A button can be on or off. A button is usually off.
A yellow button is a button in the Engine Room. It has description “Looks like it's part of the Comet Observatory piloting system.” A green button is a button in the Engine Room. It has description “Looks like it's part of the Comet Observatory piloting system.” A silver button is a button in the Engine Room. It has description “Looks like it's part of the Comet Observatory piloting system.” A red button is a button in the Engine Room. It has description “Looks like it's part of the Comet Observatory piloting system.” A purple button is a button in the Engine Room. It has description “Looks like it's part of the Comet Observatory piloting system.” A blue button is a button in the Engine Room. It has description “Looks like it's part of the Comet Observatory piloting system.”



Instead of pushing a button: 
      if the noun is on:
            say "You already did that.";
            stop the action;
      say “You press the [noun].”; 
      now the noun is on.
      
Engine Room Flying Through Space is a room. It has printed name "Engine Room (Flying Through Space)".

all_buttons_message is a truth state that varies. all_buttons_message is false.

Every turn when all the buttons are on: 
      if all_buttons_message is false:
            say “'One, two, three, four, five, six!' flashes a display screen as all the buttons and displays light up. The Comet Observatory rumbles and begins to fly through space!”;
            now the player is in Engine Room Flying Through Space;
            increase the score by 6;
      now all_buttons_message is true;
      
The turn counter is a number that varies. The turn counter is 0.

Every turn when the player is in Engine Room Flying Through Space and all the buttons are on: [and all the buttons are on?]
      increase the turn counter by 1; 
      say “You are flying through space. The display screen indicates that you have [6 minus the turn counter] turns remaining until you reach your destination.”;
      
Every turn when the turn counter is 6: 
      say “You have arrived at the Lobby.”; 
      now the player is in the Lobby;     
      now all the buttons are off;
      now the turn counter is 0;
      increase the score by 6;


Section 8 - Lobby

[Play as: Daddy. Objective: Obtain gift bag and look inside!]

The Lobby is a room. It has description "You can see the door to the party up ahead!".
The sparkly door is a closed openable door. It is in the Lobby. It is north of the Lobby. It is south of the Party Room.

Section 9 - Party

The Party Room is a room. It has description "As you enter, confetti falls from the ceiling and you spot a banner which shows up from nowhere, saying 'Happy birthday, Daddy!!!' Suddenly, five characters you'd thought could only exist in other games and books-- Mailtoad, Zaphod (or is it Phil?), Belboz, Boneywasawarriorwayayix, and Rosalina-- plus probably at least two thirds of the little Gaulish village, (plus many other characters I'm too lazy to mention) pop up, yelling 'Happy Birthday!!!' It's almost like in [italic type]The Birthday Monsters[roman type]! There's a table with a gift bag for you on it and a basket lies next to it.".
The table is a supporter in the Party Room.
After going to the Party Room for the first time:
      now the envelope is in the gift bag;
      now the gift bag is on the table;
      now the mail bag is in the Comet Observatory;
      now the Party Success Pack is in the Headquarters;
      now the basket is on the table;
      now the box is in the Heart of Gold;
      
After taking the gift bag in the Party Room:
      increase the score by 3;
      
After examining the gift bag in the Party Room:
      increase the score by 1;
      
After opening the envelope in the Party Room for the first time:
      increase the score by 1;
      
After examining the card:
      increase the score by 1;
      
The card is inside the envelope. The card has description "You'll find a copy of the card included in your game package.".
[Let them open the envelope in this room and this room only]

Every turn when the score is 42:
      say "Hurray! You did it!  You have reached the maximum score and completed the game. Have a great birthday! I hope you enjoyed the game and again, HAPPY BIRTHDAY!!!

Oh also... 'Though, in reviewing the incidents of my administration I am unconscious of intentional error, I am nevertheless too sensible of my defects not to think it probable that I may have committed many errors.' In this case, 'errors' of course means typos and bugs. Anyway, I hope you enjoyed it!

And one more note about the note at the beginning of the game, the door between the Lobby and the Party was supposed to be broken and you were supposed to have Marvin fix it, but I didn't have time to figure all that out. So that's what the note was about, if you read it and you're confused.";
      end the story finally.
      
Test gotolobby with "s / get party success pack / w / move tapestry / get party success pack / e / s / get box / get gift bag / open box / get beebleblox / put beebleblox in gift bag / n / e / get basket / open basket / get cheese / eat cheese / w / u / get mail bag / open mail bag / u / push yellow / push green / push silver / push red / push purple / push blue / l / l / l / l / l / l"
