"The Great Beacon Hill Egg Hunt" by "E. Bunny"


The story headline is "An Egg-stravagant Fiction".

Use scoring. [The maximum score is a number that varies.] The maximum score is 200.

The Bedroom, Living Room, Kitchen, Bathroom, Dining Room, Front Room, Front Porch, Garage, Front Yard, Back Yard, 21stBayview, 20thForest, 22ndStevens, The Bowl, Arrow,  National Park, Firehouse, Library are rooms.

Instead of taking something undescribed:
	say "You don't see any such thing."


Chapter 1 - In the House

Section 1 - Bedroom

The Bedroom is up from the Living Room. "The master bedroom is tastefully furnished and has a vaulted ceiling. You can exit by going down."

The Kitchen is north of the Living Room. The Bathroom is northwest of the Living Room. The Dining Room is west of the Kitchen. The Front Room is west of the Dining Room.

A bed is a supporter in the Bedroom. A pillow is on the bed. A blue backpack is a container in the Bedroom. It is closed and openable. A red Easter egg is in the blue backpack. The egg is a closed, openable container. A message is in the egg.

After taking the red egg for the first time:
	increase the score by 10;

Instead of examining the message:
	say "The message says 'Find us in the real world.'"

Section 2 - Living Room

The Living Room has description "There are big windows here and a comfy looking recliner. You can go up, northwest, north, or west into the garage.".

A couch is a supporter in the Living Room. A footrest is a container in the Living Room. It is closed and openable. A green Easter egg is in the footrest.

After taking the green egg:
	increase the score by 10;

Section 3 - Kitchen

The Kitchen has description "Granite countertops adorn this small kitchen. You can see the back yard outside a door to the east and a dining room to the west. ".

A stove is a supporter in the Kitchen. A pot is on the stove. A fridge is a container in the Kitchen. It is closed and openable. A blue Easter egg is in the fridge.

After taking the blue egg:
	increase the score by 10;

Section 4 - Bathroom

The Bathroom has description "You can see yourself in a big mirror here. There is an exit to the southeast.".

A sink is a supporter in the Bathroom. A bar of soap is on the sink. A cabinet is a container in the Bathroom.  It is closed and openable. A yellow Easter egg is in the cabinet.

After taking the yellow egg:
	increase the score by 10;

Section 5 - Dining Room

The Dining Room has description "A cozy eating nook with a chandelier hanging from the ceiling, it features a simple wooden table and four chairs. Exits lead east and west.".

A table is a supporter in the Dining Room. A utensil holder is on the table.  A cupboard is a container in the Dining Room.  It is closed and openable.
An orange Easter egg is in the cupboard.

After taking the orange egg:
	increase the score by 10;

Section 6 - Front Room

The Front Room has description "The front entry room of the house. An attractive blue rug adds to the warmth. Out the window is a beautiful city skyline.".

A rack is a supporter in the Front Room. A coat is on the rack. A black bin is a container in the Front Room. It is closed and openable.
A purple Easter egg is in the black bin.

After taking the purple egg:
	increase the score by 10;

The front door is west of Front Room and east of Front Porch.
The front door is a closed openable door.
The front door has description "It leads outside."

Chapter 2 - Yard

Section 1 - Out Front

Front Yard is west of Front Porch.
"A nice front yard with a yellow fire hydrant. You can go east or southwest."

The hydrant is scenery in the Front Yard. “The diminutive yellow plug stands tall, ready to do its job.”

Front Porch has description "You are on a wooden front porch."

Smith Brothers milk crate is a container in Front Porch. It is closed and openable. A joyful Easter egg is in the Smith Brothers milk crate.

After taking the joyful egg:
	increase the score by 10;

Section 2 - Out Back

The back door is west of Back Yard and east of Kitchen.
The back door is a closed openable door.

Back Yard has description "You are standing in the grass next to an inviting trampoline. The house is to the west."

A trampoline is a container in Back Yard. It is closed and openable. The description of the trampoline is "A big rectangular trampoline with a safety net around it. You can open it and bounce on it."

Bouncing is an action applying to one thing. Understand "bounce on [something]" as bouncing.

Instead of bouncing:
	if the trampoline is open:
		say "You jump on the trampoline and bounce up and down. Whee!";
		now player is in trampoline;
	otherwise:
		say "You can't bounce on the trampoline when it's closed."

Getting out is an action applying to one thing. Understand "get out [something]" and "get out of [something]" as getting out.

Check getting out:
	if the noun is not a container:
		say "You can't get out of that." instead;
	otherwise if the noun is closed:
		say "You can't get out of [the noun] when it's closed." instead;
	otherwise if the player is not in the noun:
		say "You are not in [the noun]." instead.

Carry out getting out:
	now the player is in the Back Yard

Report getting out:
	say "You triple backflip out of the [the noun]. Cowabunga!"

a toy yellow dump truck is a supporter in Back Yard.

A jubilant egg is on toy yellow dump truck.  The jubilant egg is undescribed.

Instead of examining toy yellow dump truck:
	say "You notice a jubilant egg in the bed of the toy yellow dump truck!";
	now the jubilant egg is described.

After taking the jubilant egg:
	increase the score by 10;

Chapter 3 - Neighborhood

Section 1 - 21stBayview

21stBayview is southwest of Front Yard. Printed name is "21st & Bayview".
"You are at a nice traffic circle at the base of a sledding hill. Inviting sidewalks lead southwest and northeast."

A flower bed is a supporter in 21stBayview.

A pink egg is on the flower bed. The pink egg is undescribed.

Instead of examining the flower bed:
	say "You notice a pink egg between the plants!";
	now the pink egg is described.

After taking the pink egg:
	increase the score by 10;

Section 2 - 20thForest

20thForest is southwest of 21stBayview. Printed name is "20th & Forest".
"You are at a traffic circle that has some lovely yellow daffodils. A path leads west, where you can see a dream ship.  You can also go southeast and northeast."

a traffic circle is a supporter in 20thForest.

A happy egg is on the traffic circle.  The happy egg is undescribed.

Instead of examining a traffic circle:
	say "You notice a happy egg in the traffic circle!";
	now the happy egg is described.

After taking the happy egg:
	increase the score by 10;

Section 3 - 22ndStevens

22ndStevens is southeast of 20thForest. Printed name is "22nd & Stevens".
"Great looking traffic circle on 22nd. The road bends down to the south.  There is also a path to the northwest."

some scrubby plants is a supporter in 22ndStevens.

A perplexed egg is on some scrubby plants.  The perplexed egg is undescribed.

Instead of examining some scrubby plants:
	say "You notice a perplexed egg in the scrubby plants!";
	now the perplexed egg is described.

After taking the perplexed egg:
	increase the score by 10;

Section 4 - The Bowl

The Bowl is south of 22ndStevens.
"A dip in the street, looks like an interesting place to ride a bike. From here it's uphill whichever way you go, north or west."

A street sign is a supporter in The Bowl.

A turquoise egg is on the street sign.  The turquoise egg is undescribed.

Instead of examining the street sign:
	say "You notice a turquoise egg at the bottom of the pole!";
	now the turquoise egg is described.

After taking the turquoise egg:
	increase the score by 10;

Section 5 - Arrow

Arrow is west of The Bowl. Printed name is "Arrow Bench".
"An attractive spot shaded by a few short but dedicated trees. There is a wooden bench shaped like an arrow.  Some steps leads up to the west, or you can go east."

under the bench is a supporter in Arrow.

A spotted egg is on the under the bench.  The spotted egg is undescribed.

Instead of examining the under the bench:
	say "You notice a spotted egg under the bench!";
	now the spotted egg is described.

After taking the spotted egg for the first time:
	increase the score by 10;

Section 6 - National Park

National Park is west of Arrow.
"You look out toward the Cascades.  What a view! There is a low wall here.  A path leads east down some steps, or you can go southwest."

behind the wall is a supporter in National Park.

A fuchsia egg is on the behind the wall.  The fuchsia egg is undescribed.

Instead of examining the behind the wall:
	say "You notice a fuchsia egg behind the wall!";
	now the fuchsia egg is described.

After taking the fuchsia egg:
	increase the score by 10;

Section 7 - Firehouse

Firehouse is southwest of National Park.
"A lovely old firehouse from 1930 with a story illustrated on rocks out front.  Paths lead north and northeast."

three raised tree boxes is a supporter in Firehouse.

A teal egg is on the three raised tree boxes.  The teal egg is undescribed.

Instead of examining the three raised tree boxes:
	say "You notice a teal egg in the middle tree box!";
	now the teal egg is described.

After taking the teal egg:
	increase the score by 10;

Section 8 - Library

Library is north of Firehouse and west of 20thForest.
"A beautiful library with a dream ship out front.  From here you can go east or south."

a spring poem is a supporter in Library.

A mauve egg is on a spring poem.  The mauve egg is undescribed.

After taking the mauve egg:
	increase the score by 10;

Instead of examining a spring poem:
	say "You notice a mauve egg lying beside the spring poem!";
	now the mauve egg is described.

The garage door is a closed openable door. It is west of Living Room and east of Garage.
Instead of going through a closed door (called D):
	say "Bonk! [The D] is closed. ";
	stop the action.


Chapter 4 - Garage

Garage contains a closed lockable locked container called a safe.
"You are in a two car garage with a really high ceiling.  There is a weight bench here and an extremely heavy looking kettlebell."

The kettlebell is scenery in the Garage. "It's a massive cast iron ball with a handle."

The weight bench is scenery in the Garage. "A padded black vinyl surface covers the bench. It has wheels on one end."

The safe has a list of numbers called the current combination.

The safe has a list of numbers called the true combination. The true combination of the safe is {19, 15, 12, 15, 14, 7, 1, 14, 4, 20, 8, 1, 14, 11, 19, 6, 15, 18, 1, 12, 12, 20, 8, 5, 6, 9, 19, 8}.

Understand "set [something] to [a number]" as setting it numerically to. Setting it numerically to is an action applying to one thing and one number.

Instead of examining the safe:
	if the number of entries in the current combination of the safe is 0,
		say "You haven't dialed the safe to any combination yet.";
	otherwise say "You have dialed the safe to [the current combination of the safe].".

Check setting something numerically to (this is the block setting numerically rule):
	say "[The noun] cannot be set."

Instead of setting the safe numerically to the number understood:
	truncate the current combination of the safe to the last 28 entries;
	add the number understood to the current combination of the safe;
	if the safe is locked and the current combination of the safe is the true combination of the safe:
		say "You dial [the number understood], and [the safe] gives a joyous CLICK.";
		now the safe is unlocked;
	otherwise if safe is unlocked and the safe is closed and the current combination of the safe is not the true combination of the safe:
		say "You spin the dial, and [the safe] snicks locked.";
		now the safe is locked;
	otherwise:
		say "You dial [the number understood] on the safe."

Inside the safe is some paper.
Instead of examining some paper:
	say "You read the message on the paper:  .-.. --- --- -.- / .. -. / - .... . / .-.. .. -. . -. / -.-. .-.. --- ... . -";
	increase the score by 40;

Every turn when the score is 200:
	say "Hurray! You did it!  You have reached the maximum score and completed the game.  Only one thing left to do now.  Have a very hoppy Easter and thanks for exploring the neighborhood with me.";
	end the story finally.

A mailbox is a container in the Front Yard. It is closed and openable.
A mailbox contains an envelope. The envelope is a closed, openable container.
The envelope contains a letter.

Instead of examining the letter:
	say "Happy Easter! Love, E.B."


Chapter 5 - Tests

Test houseeggs with "gonear bedroom / open blue backpack / get egg / open egg / read message / down / open footrest / get egg / nw / open cabinet / get egg / se /north/ open fridge / get egg/w/ open cupboard / get egg /w/ open black bin/ get egg"

Test safe with "gonear bedroom / d / open door / w / x safe / set safe to 19  / set safe to 15  / set safe to 12  / set safe to 15  / set safe to 14  / set safe to 7  / set safe to 1  / set safe to 14  / set safe to 4  / set safe to 20  / set safe to 8  / set safe to 1  / set safe to 14  / set safe to 11  / set safe to 19  / set safe to 6  / set safe to 15  / set safe to 18  / set safe to 1  / set safe to 12  / set safe to 12  / set safe to 20  / set safe to 8  / set safe to 5  / set safe to 6  / set safe to 9  / set safe to 19 / set safe to 8 / open safe / get paper / read paper"

Test outsideeggs with "gonear front room / open door / w / open crate / get egg / w / x hydrant / sw / x bed / get egg / sw / x circle / get egg / se / x plants / get egg / s / x sign / get egg / w / x bench / get egg / w / x wall / get egg / sw / x boxes / get egg / n / x poem / get egg"

Test backyard with "gonear kitchen / open door / e / open trampoline / bounce on trampoline / get out / x truck / get egg"

Test all with "test houseeggs / test outsideeggs / test backyard / test safe"


