"The Great Beacon Hill Egg Hunt" by "E. Bunny"

The Bedroom, Living Room, Kitchen, Bathroom, Dining Room, Front Room, Front Porch, Garage, Front Yard, Back Yard, 21stBayview, 21st & Forest, 22nd & Stevens, The Bowl, Arrow Bench,  National Park, Firehouse, Library are rooms.

Instead of taking something undescribed:
	say "You don't see any such thing."
	
The Bedroom is up from the Living Room. The Kitchen is north of the Living Room. The Bathroom is northwest of the Living Room. The Dining Room is west of the Kitchen. The Front Room is west of the Dining Room.

A bed is a supporter in the Bedroom. A pillow is on the bed. A nightstand is a container in the Bedroom. It is closed and openable. A red Easter egg is in the nightstand. The egg is a closed, openable container. A message is in the egg.

Instead of examining the message:
	say "The message says 'Find me in the real world.'"

The Bedroom has description "The master bedroom is tastefully furnished and has a vaulted ceiling. You can exit by going down."

A couch is a supporter in the Living Room. A footrest is a container in the Living Room. It is closed and openable. A green Easter egg is in the footrest.

A stove is a supporter in the Kitchen. A pot is on the stove. A fridge is a container in the Kitchen. It is closed and openable. A blue Easter egg is in the fridge.

A sink is a supporter in the Bathroom. A bar of soap is on the sink. A cabinet is a container in the Bathroom.  It is closed and openable. A yellow Easter egg is in the cabinet.

A table is a supporter in the Dining Room. A utensil holder is on the table.  A cupboard is a container in the Dining Room.  It is closed and openable.
An orange Easter egg is in the cupboard.

A rack is a supporter in the Front Room. A coat is on the rack. A bin is a container in the Front Room. It is closed and openable.
A purple Easter egg is in the bin.

The front door is west of Front Room and east of Front Porch.
The front door is a closed openable door.
The front door has description "It leads outside."

[After going when Front Room is the location: now it is front door; continue the action.]

Front Yard is west of Front Porch.
"A nice front yard with a yellow fire hydrant."

Front Porch has description "You are on a wooden front porch next to a Smith Brothers milk crate."

The back door is west of Back Yard and east of Kitchen.
The back door is a closed openable door.

Back Yard has description "Nice trampoline here."

21stBayview is southwest of Front Yard.
"You are at a nice traffic circle. An inviting sidewalk beckons to the south."

A flower bed is a supporter in 21stBayview.
A pink egg is on the flower bed. The pink egg is undescribed.

Instead of examining the flower bed:
	say "You notice a pink egg between the plants!";
	now the pink egg is described.

21st & Forest is south of 21stBayview.
"You are at a traffic circle to the east of the library."

22nd & Stevens is southeast of 21st & Forest.
"Great looking traffic circle on 22nd."

The Bowl is south of 22nd & Stevens.
"A dip in the street from all directions, looks like an interesting place to ride a bike."

Arrow Bench is west of The Bowl.
"An attractive spot with a beautiful wooden bench in the shape of an arrow."

National Park is west of Arrow Bench.
"You look out toward the Cascades.  What a view!"

Firehouse is southwest of National Park.
"A lovely old firehouse from 1930 with a story illustrated on rocks out front."

Library is north of Firehouse and west of 21st & Forest.
"A beautiful library with a dream ship out front."

The garage door is a closed openable door. It is west of Living Room and east of Garage.
Instead of going through a closed door (called D):
	say "Bonk! [The D] is closed. ";
	stop the action.

Garage contains a closed lockable locked container called a safe.

The safe has a list of numbers called the current combination.

The safe has a list of numbers called the true combination. The true combination of the safe is {2, 10, 11, 15, 19, 22, 25, 29}.

Understand "set [something] to [a number]" as setting it numerically to. Setting it numerically to is an action applying to one thing and one number.

Instead of examining the safe:
	if the number of entries in the current combination of the safe is 0,
		say "You haven't dialed the safe to any combination yet.";
	otherwise say "You have dialed the safe to [the current combination of the safe].".

Check setting something numerically to (this is the block setting numerically rule):
	say "[The noun] cannot be set."

Instead of setting the safe numerically to the number understood:
	truncate the current combination of the safe to the last 2 entries;
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
	say "You read the message on the paper:  .-… — — -.- / … -. / - .-. … … - .- -. … / -.-. .-… — … . -
";

A mailbox is a container in the Front Porch.
A mailbox contains an envelope.
An envelope contains a letter.

[Instead of opening an egg: say "The [noun] contains a message inside."

Instead of reading a message: say "The message says: Find me in the real world."]

