class Fish
  attr_accessor :fish, :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @fish = fish
    @mood = mood
  end
end
