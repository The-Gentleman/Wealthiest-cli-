#class WorldsWealthiestPerson::Person. 
#WWP::Person just gives the WWP class access to all constants, instance methods, etc, without stating that a WWP is a type of person. The :: syntax carries all public items over to the inheriting class or module.
#self = Wealthy Person 
Class WorldsWealthiestPeople::Person 

attr_accessor :name, :rank, :net_worth, :age, :citizenship, :industry, :source_of_wealth, :description

@@all = []  #add newly created wealthy person with attributes to Person Class

#def self.new_from_index_page(r)
#end 

def initialize(name=nil, rank=nil, net_worth=nil, age=nil, citizenship=nil, industry=nil, source_of_wealth=nil, description=nil )
  



  