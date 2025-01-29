/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots             * { time == 1 } 
 - Vary some text via a loop {&|} 0 | 1 | 2
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Early Morning, 1 Morning, 2 Noon, 3 Early Evening, 4 Night


-> begin
== begin ==
It has been years since the war. You reside in an underground bunker. The world has been overrun with "zombies" of some sort. It is only safe to leave the bunker during the day. Your bunker is mostly self sufficient, but your generator has broken, preventing you from growing your crops and purifying your water. You need to find a new alternator.
* [Begin] -> bunker


== bunker ==
You are inside of your bunker.
It is { advance_time() }


+ [Go outside] -> outside1
+ [Sleep] -> bunker
-> DONE

== outside1 ==
You are outside. There is an abandoned automotive repair shop down the road.

It is { advance_time() }

+ [Go down the road] -> autoshop

+ [Return home] -> bunker

== autoshop ==
You found the half-blown up auto shop. There seems to be shelves of parts inside. There is also a barn behind the shop.
It is { advance_time() }

+ [Search the shelves for what you need] -> shop_back
+ [Check out the barn] -> barn
+ [Return home] -> bunker

== shop_back ==
There seems to be nothing left. There is a barn behind the shop, maybe it has what youre looking for.
It is { advance_time() }
+ [Search the barn] -> death
+ [Return home] -> bunker

== death ==
It is evening. You are dead to a hoard of zombies.
-> END

== barn == 
Wow, they have exactly what you need!
+ [Return home] -> end
+ [Search the shop shelves] -> death

== end ==
You made it home before night with the alternator. You succesfully fix your generator and your bunker becomes self sufficient again.
-> END

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 4:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Early Morning"
        
        - time == 1:
            ~ return "Morning"
        
        - time == 2:
            ~ return "Noon"
            
        - time == 3:
            ~ return "Late Evening"
            
        - time == 4:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
