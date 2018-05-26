class Cat
  attr_accessor :cat, :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @cat = cat
    @mood = mood
  end
end
