class Dog
  attr_accessor :dog, :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @dog = dog
    @mood = mood
  end
end
