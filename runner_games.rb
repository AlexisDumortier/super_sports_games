require './lib/games'
require './lib/event'

puts "!!! Welcome to the Games!!!  Please enter the year of your games? \n"
input = gets.chomp
games = Games.new(input)


puts "Let's create a new event \n"
puts "Please enter the name of your event :"
name_event = gets.chomp
puts "Please enter the ages of the participants separated by comma"
ages = gets.chomp.split(',')

age_participants = []
ages.each do |age|
  age_participants << age.to_i
end

event = Event.new(name_event, age_participants)
games.add_event(event)

puts "Would you like to ('a') add an event / ('b') see a summary / ('c') exit"
input = gets.chomp

while input != 'c'

  case input

  when 'a'
    puts "Let's create a new event \n"
    puts "Please enter the name of your event :"
    name_event = gets.chomp
    puts "Please enter the ages of the participants separated by comma"
    ages = gets.chomp.split(',')
    age_participants = []

    ages.each do |age|
      age_participants << age.to_i
    end

    event = Event.new(name_event, age_participants)
    games.add_event(event)

  when 'b'
    puts games.all_events_summary

  else
    puts "You answer is not allowed in the choices \n"
    puts "Would you like to ('a') add another event / ('b') see a summary / ('c') exit"
  end

  puts "Would you like to ('a') add an event / ('b') see a summary / ('c') exit"
  input = gets.chomp

end

puts "Thank you for participating"

# while user_input != 'exit'
#
#
#
#
#
# input = gets.chomp
# end
