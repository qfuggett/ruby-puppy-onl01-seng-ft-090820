require 'pry'

class Dog
  attr_accessor :puppy
  @@all = [ ]  #storage for each puppy born/each instance
  
  def initialize(puppy)
    @puppy = puppy
    @@all << save
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    binding.pry
    @@all.each do |individual_dogs|
      puts "#{individual_dogs}"
    end
  end
  
  def save
    @@all << self
  end
  
  def self.clear_all
    @@all.clear
  end
  
end