# wk2d2_homework

This was a code-along exercise that bled into homework. 

I didn't add any more code to my work after the class but I had a good look and played around with the supplied code.

One query is with this section of the Viewer class file:

def show_update(entry)
    puts "#{entry.player.name} rolled #{entry.roll}."
    if(entry.modifier != 0)
      puts "#{entry.player.name} hit a #{entry.modifier_type}! Moves #{entry.modifier}..."
    end
    puts "#{entry.player.name} is on tile #{entry.player.position}."
  end

I'm not sure where the "entry" parameter comes from or what purpose it has in this. 
I didn't see it turn up in any of the other files but I could have missed something.


I also revisited the car/engine classes and compared to the much simpler suggested code. 
