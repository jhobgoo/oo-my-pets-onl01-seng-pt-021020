class Owner

  
  @@all = []
  
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cats.all.select do |cat|
      cat.owner == self
    end
  end
  
end