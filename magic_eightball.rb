require "colorize"
require "pry"


@random_answer = [ "You are correct", "Try again", "Wrong", "Make better decisions",
"You've been hack", "Yes", "No", "The Rapture is upon us" ]

def menu
  puts "Welcome to the Magic Eight Ball".colorize(:orange)
  puts 'Type 1 to ask a question'.colorize(:orange)
  puts 'Type quit to end the program'.colorize(:orange)
  input = gets.strip
  # binding.pry
case input
 when "1"
  question  
 when "quit"
  puts "goodbye"
  exit(0)
  
  else
    puts "Invalid Input"
    menu

end
end



def question
  puts "What is your question?"
  answer = gets.strip
  puts @random_answer.sample
  # binding.pry
end

menu
# binding.pry