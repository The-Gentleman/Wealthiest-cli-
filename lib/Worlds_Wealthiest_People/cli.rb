require "Wealthiest/cli/version"
#module Wealthiest
#  module Cli
#    class Error < StandardError; end
    # Your code goes here...
# end
#end

#greet the user 
def hello 
  #
  WorldsWealthiestPeople::Scraper.new.make_wealthiest_people
  puts "Hello, these are the 50 Wealthiest People in the World!"
  start 
end 

#ask the user for input 
def start 
  puts ""
  puts "Who are the wealthiest people you would like to see? 1-10, 11-20, 21-30, 31-40 or 41-50?"
  input = gets.strip_to_i #the gets method is being called. the gets method captures the last thing the user typed into the terminal. the return value for gets is the text typed into the terminal. 
  #strip removes any whitespace 
  
  print_people(input)
  
  puts "" 
  puts "What person would you like more information on?"
  input = gets.strip 
  
  person = WorldsWealthiestPeople::People.find(input.to_i)

   print_person(person)

  puts ""
  puts "Would you like to see another wealthy person? Enter Y or N"


