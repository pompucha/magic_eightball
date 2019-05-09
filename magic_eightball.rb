require 'colorize'
require 'pry'


@random_answer = [ "You are correct", "Try again", "Wrong", "Make better decisions",
"You've been hacked", "Yes", "No", "The Rapture is upon us",
 "You kiss your mutha with that mouth!", "nothing", "food will fall out of the sky",
 ]

def menu
  puts 'Welcome to the Magic Conchshell!!!'.colorize(:red)
  puts 'Type 1 to ask a question'.colorize(:red)
  puts 'Type 2 to add answers to the Conch'.colorize(:red)
  puts 'Type quit to end the program'.colorize(:red)
  puts '***SECRET SPOT***'.colorize(:black)
  input = gets.strip
  # binding.pry
case input
 when "1"
  question
 when "2"
  answers
 when "quit"
  puts "goodbye"
  exit(0)
 when "secret"
  puts "You've found the Secret!!!!: ".colorize(:cyan)
  @random_answer.each do |random|
    puts "#{random}"
  end

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

def answers
  puts "What answer would you like to add?"
   answer = gets.strip
  if @random_answer.include?(answer)
    puts "Duplicate answer"
    answers
  else 
  puts "This answer has been added"
  @random_answer << answer
  menu
  end
end
menu
# binding.pry