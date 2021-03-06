require 'pry'

class Dog
  attr_accessor :puppy
  @@all = [ ]  #storage for each puppy born/each instance
  
  def initialize(name)
    @name = name
    self.save
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    @@all.each do |individual_dogs|
      puts individual_dogs.name
    end
  end
  
  def save
    @@all << self
  end
  
  def self.clear_all
    @@all.clear
  end
  
  def name
    @name
  end
  
end