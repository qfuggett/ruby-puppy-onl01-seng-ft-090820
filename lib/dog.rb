require 'pry'

class Dog
  attr_accessor :puppy
  @@all = [ ]  #storage for each puppy born/each instance
  
  def initialize(puppy)
    @puppy = puppy
    @@all << self     #every puppy born pushed into array
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    @@all.each do |individual_dogs|
      puts individual_dogs.puppy
    end
  end
  
  def save
    @@all << self
  end
  
  def self.clear_all
    @@all.clear
  end
  
  def puppy
    @puppy
  end
  
end