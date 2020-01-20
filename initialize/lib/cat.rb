class Cat
attr_reader :cat

  def initialize (cat, sound = "meow")
    @cat = cat
    @sound = sound
  end

  def name
    @cat
  end

end
