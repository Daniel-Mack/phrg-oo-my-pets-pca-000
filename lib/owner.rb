require 'pry'

class Owner
attr_accessor :cat, :dog, :fish, :owner, :name, :pets
attr_reader :species

@@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self

  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
  @@all = []
  end

  def say_species
    return "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets.each do |k, v|
      if k == :dogs
        v.each {|dog| dog.mood = "happy"}
      end
    end
  end

  def play_with_cats
    @pets.each do |k, v|
      if k == :cats
         v.each {|cat| cat.mood = "happy"}
       end
     end
   end

   def feed_fish
    @pets.each do |k, v|
      if k == :fishes
        v.each {|fish| fish.mood = "happy"}
      end
    end
  end

  def sell_pets
    @pets.each do |k, v|
      v.each do |pet|
        pet.mood = "nervous"
      end
      v.clear
    end
  end

  def list_pets
    num_dog = @pets[:dogs].size
    num_cat = @pets[:cats].size
    num_fishes = @pets[:fishes].size
    return "I have #{num_fishes} fish, #{num_dog} dog(s), and #{num_cat} cat(s)."
    end
end
