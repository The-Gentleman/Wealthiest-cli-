#class WorldsWealthiestPerson::Person. 
#WWP::Person just gives the WWP class access to all constants, instance methods, etc, without stating that a WWP is a type of person. The :: syntax carries all public items over to the inheriting class or module.
#self = Wealthy Person 
Class WorldsWealthiestPeople::Person 

#attributes from the website we will be using to return an array of data in the @@all:
#source of wealth and description will have their own methods 
attr_accessor :name, :rank, :net_worth, :age, :citizenship, :industry, :source_of_wealth, :description

@@all = []  #add newly created wealthy person with attributes to Person Class

#create a new object within a seperate class from the scraper, (So the scraper class can just scrape data) 
#make the object by calling on the ‘.new’ method from a separate class.

 def self.new_from_index_page(x)
    self.new(
      x.css("h2").text, 
      "https://www.businessinsider.com/richest-people-world-billionaires-list-2017-11#{x.css("a").attribute("href").text}",
      x.css("h3").text,
      x.css(".position").text
      )
  end


def initialize(name=nil, rank=nil, net_worth=nil, age=nil, citizenship=nil, industry=nil)
@name = name
@rank = rank 
@net_worth = net_worth 
@age = age 
@citizenship = citizenship
@industry = industry 
save 
end 

##Class method that should return the contents of the @@all array
def self.all
  @@all 
end 

#save all people into the @@all array 
def save 
  @@all << self
end 

#The find method locates and returns the first element in the array that matches a condition you specify.
#Defined a find method on the self(person) class that accepts an id. 
#id = user_id
def self.find(id)
  self.all[id-1]
end 

#Reminder: ||= is an operator that assigns a value, much like = or our classic assignment operator, but will only complete the assignment if the left side of our operation returns false or nil.
# ||= a = nil
# b = 20
# a ||= b
# a # => 20

def source_of_wealth 
@source_of_wealth = 
end 

def description
@description = 
end 

def doc 
  @doc ||= Nokogiri::HTML(open(self.url))
end 





  