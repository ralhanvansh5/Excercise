def gold_room
  puts "This room is full of gold. How much do you take?."

  print "> "
  choice = $stdin.gets.chomp

  # this line has a bug, so fix it

#  if choice.include?("0") || choice.include?("1")
  #  if choice.to_i.to_s == choice
  if (/\d/.match(choice)) && !(/\D/.match(choice))
      how_much = choice.to_i

      if how_much < 50
        puts "Nice, you're not greedy, you win!."
        exit(0)
      else
        dead("You greedy bastard!")
      end

    else
      dead("Man, learn to type a number")
    end
end


def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed and chews your legs.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end

def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it whatever stares at you and you go insane."
  puts "Do you flee for your life or eat you head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
      cthulhu-room
  end
end


def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left"
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice =="left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stumble around the room untiil you starve.")
  end
end


gold_room
